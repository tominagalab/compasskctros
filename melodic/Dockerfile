FROM tiryoh/ros-desktop-vnc:melodic

SHELL ["/bin/bash", "-c"]

# 2024.11.14時点でユーザとしてログイン処理がなくても良くなった
# ベースイメージ側でログインユーザ（ubuntu）で作業することになっているのかも（？）
# USER ubuntu # 不要(2024.11.14)
WORKDIR /home/ubuntu

# とりあえずアップデート
RUN sudo apt update && sudo apt upgrade -y

# 念の為エディタのインストール
RUN sudo apt install -y nano gedit

# turtlebot3でslamのシミュレーションをするときに必要なパッケージのインストール
RUN sudo apt install -y ros-melodic-turtlebot3 ros-melodic-turtlebot3-fake ros-melodic-turtlebot3-gazebo ros-melodic-gmapping
# turtlebot3でnavigationのシミュレーションをするときに必要なパッケージのインストール
RUN sudo apt install -y ros-melodic-dwa-local-planner

# make directry "catkin_ws"
RUN mkdir -p catkin_ws/src

# initialize catkin_ws
WORKDIR /home/ubuntu/catkin_ws/src
RUN source /opt/ros/melodic/setup.bash && catkin_init_workspace

# do catkin_make
WORKDIR /home/ubuntu/catkin_ws
RUN source /opt/ros/melodic/setup.bash && catkin_make

# overwrite to ~/.bashrc
WORKDIR /home/ubuntu
RUN echo "source /home/ubuntu/catkin_ws/devel/setup.bash" >> .bashrc

#expose port 80 for vnc 
EXPOSE 80

USER root