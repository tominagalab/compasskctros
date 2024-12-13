FROM tiryoh/ros-desktop-vnc:noetic

SHELL ["/bin/bash", "-c"]

# 2024.11.14時点でユーザとしてログイン処理がなくても良くなった
# ベースイメージ側でログインユーザ（ubuntu）で作業することになっているのかも（？）
# USER ubuntu # 不要(2024.11.14)
WORKDIR /home/ubuntu

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install -y nano gedit
RUN sudo apt install -y ros-noetic-turtlebot3 ros-noetic-turtlebot3-fake ros-noetic-turtlebot3-gazebo
RUN sudo apt install -y ros-noetic-gmapping ros-noetic-dwa-local-planner

# make directry "catkin_ws"
RUN mkdir -p catkin_ws/src

# Important! to catkin workspace
WORKDIR /home/ubuntu/catkin_ws/src
RUN source /opt/ros/noetic/setup.bash && catkin_init_workspace
# Important! to catkin workspace
WORKDIR /home/ubuntu/catkin_ws
RUN source /opt/ros/noetic/setup.bash && catkin_make

WORKDIR /home/ubuntu
RUN echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> .bashrc

#expose port 80 for vnc 
EXPOSE 80

USER root