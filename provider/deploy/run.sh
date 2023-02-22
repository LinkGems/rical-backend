#!/bin/sh

PROJECT_NAME="rical-usercenter"
VOLUME_NAME="volume_$PROJECT_NAME"
IMAGE_NAME="image_$PROJECT_NAME"
IP=3
PORT=10001

# 删除卷地址
#docker volume rm $VOLUME_NAME

# 创建卷
echo "creating $VOLUME_NAME"
docker volume create $VOLUME_NAME

# 创建镜像
echo "building $IMAGE_NAME"
docker build -t $IMAGE_NAME /var/lib/docker/volumes/$VOLUME_NAME/_data/.

# 运行容器
echo "running $PROJECT_NAME"
docker run -it \
-p $PORT:$PORT \
--net wtnet \
--name $PROJECT_NAME \
--ip 172.18.3.$IP \
$IMAGE_NAME