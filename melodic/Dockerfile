FROM tiryoh/ros-desktop-vnc:melodic

#SHELL ["/bin/bash", "-c"]

USER ubuntu
WORKDIR /home/ubuntu

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install -y nano

RUN mkdir -p catkin_ws/src

#catkin_init_workspace, catkin_makeコマンドがDockerfileからなぜか使えないので
#一度コンテナを作成してからcatkin_wsの初期化をしている

USER root