# coding=UTF-8
"""
@filename:backup.py
@function:
        实现nfs存储的文件定时转存到备份目录下，转存是把一天的文件打包成zip
"""
import zipfile
import os
import time
import datetime
import logging
import shutil


logger = logging.getLogger(__name__)
logger.setLevel(level = logging.INFO)
handler = logging.FileHandler("backup.log")
handler.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)

#backup_src="/data/nfs"
#backup_dst="/backup"

result_list=[]  # 存储需要备份的目录
backup_list=[]  # 存储备份后的文件存储目录
zipFileName=[]  # 存储备份的文件名
MAX_SAVE_DAY_NUM=150  # 文件保留天数
  

# 检查出需要备份的目录，备份后产生的文件名，以及生产备份文件的目录
def findNeedBackupDayDir(backupSrc,backup_dst):
    for backup_dir in os.listdir(backupSrc):  # need to backup dirs
        if os.path.isdir(backupSrc+"/"+ backup_dir):
            for year_dir in os.listdir(backupSrc+"/"+ backup_dir):#year
                if os.path.isdir(backupSrc+"/"+ backup_dir + "/" + year_dir):
                    for month_dir in os.listdir(backupSrc+"/"+ backup_dir + "/" + year_dir):
                        if os.path.isdir(backupSrc+"/"+ backup_dir + "/" + year_dir+ "/" + month_dir):
                            for day_dir in os.listdir(backupSrc+"/"+ backup_dir + "/" + year_dir + "/" + month_dir):
                                if os.path.isdir(backupSrc+"/"+ backup_dir + "/" + year_dir+ "/" + month_dir + "/" + day_dir):
                                    ctime=os.path.getctime(backupSrc +"/"+backup_dir+"/"+year_dir+"/"+month_dir+"/"+day_dir)
                                    create=datetime.datetime.fromtimestamp(ctime)+datetime.timedelta(days=+1)
                                    nowdate=datetime.datetime.now()
                                    if (nowdate - create).days > MAX_SAVE_DAY_NUM:  # 180天前目录是要备份的
                                        result_list.append(backupSrc+"/"+ backup_dir + "/" + year_dir+ "/" + month_dir + "/" + day_dir)
                                        backup_list.append(backup_dst+ "/"+ backup_dir + "/" + year_dir+ "/" + month_dir + "/")
                                        zipFileName.append("20"+year_dir+"-"+ month_dir+"-"+day_dir+".zip")
                                        logger.info("=====待备份文件目录：" + backupSrc+"/"+ backup_dir + "/" + year_dir + "/" + month_dir + "/" + day_dir)

    logger.info("===========result_list: %s" % (result_list))
    logger.info("===========backup_list: %s" % (backup_list))


# 备份文件到指定目录中
def backup2ZipFile(src_dir,zipFileName,dst_dir):
    logger.info("============== 正在打包备份文件 ...... ==============")
    # check src_dir eq dst_dir
    for i, data in enumerate(src_dir):
        logger.info("============== src_dir = %s, dst_dir = %s ==============" % (src_dir[i], dst_dir[i]))
        if not os.path.exists(dst_dir[i].lstrip("//")):
            os.makedirs(dst_dir[i])
        backupToZip(result_list[i],zipFileName[i],backup_list[i])
    logger.info("============== 打包备份文件结束 ==============")
    
    
# 把指定目录下的文件打包成zip文件包。
def backupToZip(folder,zipfilename,dst_dir):
    folder = os.path.abspath(folder)
    number = 1
    zipFileName = dst_dir + zipfilename
    logger.info('Creating %s...' % (zipFileName))
   
    if not os.path.exists(zipFileName):
        backupZip = zipfile.ZipFile(zipFileName,'w')
    else:
		logger.info("============== %s zip file has already exists  =============="% (zipFileName))
        return

    for folderName, subFolders, fileNames in os.walk(folder):
        logger.info("Adding files in %s..." % (folderName))
        for fileName in fileNames:
            if fileName not in backupZip.namelist():
                backupZip.write(os.path.join(folderName + "/",fileName))
    backupZip.close()
    logger.info('===================  打包完成Done  ===================')


# 检查并删除已备份的源文件目录
def checkZipFileAndRemoveSrcFile(result_list,zipFileName,dst_dir):
    for i, data in enumerate(dst_dir):
        if os.path.exists(dst_dir[i] + zipFileName[i]):
            del_list = os.listdir(result_list[i])
            for fname in del_list:
                file_path = os.path.join(result_list[i], fname)
                if os.path.isfile(file_path):
                    os.remove(file_path)
            shutil.rmtree(result_list[i])
    logger.info("============== 已删除已备份的源文件 ==============")          
            
            
# main()
# 调试时注意，在生产环境别误删数据。
if __name__=="__main__":
    backup_src="/data/nfs"
    backup_dst="/backup"
    findNeedBackupDayDir(backup_src,backup_dst)  # 查找需备份文件
    backup2ZipFile(result_list,zipFileName,backup_list)  # 备份文件到zip中
    # checkZipFileAndRemoveSrcFile(result_list,zipFileName,backup_list)  # 删除已备份的源文件
