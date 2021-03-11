#!/bin/bash
i=0
counter=0
while((counter <= 10000)) 
do
   #sleep 3
   counter=$((counter+1))
   if [[ "$counter" -gt 5 ]];then
      sleep 1
      counter=0
   else
   #读文件获取requestCallNumber 号码
   while read line
	do
    #echo $line
    curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d "{\"method\":\"moreOne\",\"batchId\":\"63b379fe-3e6a-4d4e-80e8-a40e450d905\",\"ivrId\":\"161\",\"dataSource\":\"2\",\"skillId\":\"1000121\",\"callType\":\"1\",\"callerNum\":\"10086\",\"data\":{\"number\":\"1\",\"$line\":[\"60019\"]}}" http://10.21.19.60:8080/oface
	done < test.txt
 fi
done
