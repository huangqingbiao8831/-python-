#!/bin/bash
i=0
while((i <= 2)) 
do 
   curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d "{\"method\":\"moreOne\",\"batchId\":\"63b379fe-3e6a-4d4e-80e8-a40e450d905\",\"ivrId\":\"161\",\"dataSource\":\"2\",\"skillId\":\"1000121\",\"callType\":\"1\",\"callerNum\":\"10086\",\"data\":{\"number\":\"1\",\"requestCallNumber\":[\"9018913011709\"]}}" http://192.168.240.54:8080/oface
done
