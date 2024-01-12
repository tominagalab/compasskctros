#!/bin/bash
echo '< compasskctros/melodic:latest push >'

#CONTAINER_NAME=container
IMAGE_NAME=compasskctros/melodic:latest

#マルチアーキテクチャビルド&プッシュ
#うまくいかない
#docker buildx build --platform linux/amd64,linux/arm64 -t ${IMAGE_NAME} . --push

