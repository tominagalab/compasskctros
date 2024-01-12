FROM compasskctros/melodic

USER ubuntu
WORKDIR /home/ubuntu

RUN sudo apt update
RUN sudo apt upgrade -y
RUN sudo apt install ros-melodic-usb-cam -y

USER root