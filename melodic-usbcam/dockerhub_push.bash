#!/bin/bash
echo '< compasskctros/melodic-usbcam:latest push >'

CONTAINER_NAME=container
IMAGE_NAME=compasskctros/melodic-usbcam:latest

#マルチアーキテクチャビルド&プッシュ
#うまくいかない
docker buildx build --platform linux/amd64,linux/arm64 -t ${IMAGE_NAME} . --push

#普通にcommit & push
#docker commit ${CONTAINER_NAME} ${IMAGE_NAME}
#docker push ${IMAGE_NAME}
