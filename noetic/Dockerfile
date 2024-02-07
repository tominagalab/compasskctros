FROM tiryoh/ros-desktop-vnc:noetic

SHELL ["/bin/bash", "-c"]

USER ubuntu
WORKDIR /home/ubuntu

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install -y nano gedit

RUN mkdir -p catkin_ws/src

# Important! to catkin workspace
WORKDIR /home/ubuntu/catkin_ws/src
RUN source /opt/ros/noetic/setup.bash && catkin_init_workspace
# Important! to catkin workspace
WORKDIR /home/ubuntu/catkin_ws
RUN source /opt/ros/noetic/setup.bash && catkin_make

WORKDIR /home/ubuntu
RUN echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> .bashrc

USER root