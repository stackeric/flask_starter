#!/bin/bash
project_name="socketio";
version="";
branch="";
environment="";
publish_user=root;
server=172.23.6.91;
now=`date +%Y%m%d%H%M%S`;

echo "==============================================";
echo "准备发布: ${project_name}";


echo "==============================================";
echo "拷贝文件"
mkdir temp
cp -r socketio temp
echo "向服务器发送文件"
ssh  ${publish_user}@${server}  "cd /data && mkdir temp"
scp -rp socketio ${publish_user}@${server}:/data/temp

echo "==============================================";
echo "file exchange"
ssh  ${publish_user}@${server}  "cd /data && mv socketio socketiobackup/$now"
ssh  ${publish_user}@${server}  "cd /data && yes | cp -rf temp/socketio ."
ssh  ${publish_user}@${server}  "cd /data &&  rm -rf temp"
echo "==============================================";
echo "删除临时文件"

rm -rf temp

echo "==============================================";
echo "发布成功";




#echo $SERVERS
#echo " ssh ${publish_user}@${SERVERS} 'mkdir -p ${version_path}'"
#echo " scp ~/export/${filename} ${publish_user}@${SERVERS}:${version_path}/${filename}"
#echo " ssh ${publish_user}@${SERVERS} 'cd ${version_path} && tar xf $filename'"
#echo " ssh ${publish_user}@${SERVERS} 'cd ${version_path} && grunt dev'"
#echo " ssh ${publish_user}@${SERVERS} 'cd /srv/http && sh project_sync.sh ${project_name}'"

#ssh ${publish_user}@${SERVERS} "mkdir -p ${version_path}"
#scp ~/export/${filename} ${publish_user}@${SERVERS}:${version_path}/${filename}
#ssh ${publish_user}@${SERVERS} "cd ${version_path} && tar xf $filename"
#ssh ${publish_user}@${SERVERS} "cd ${version_path} && grunt build"
#ssh ${publish_user}@${SERVERS} "cd /srv/http && sh project_sync.sh ${project_name}"
#ssh ${publish_user}@${SERVERS} "pm2 restart consolev3"
