# WS_COMPASS
## はじめに  
COMPASSのROS教材開発用のリポジトリ．以下のソース群を含む．  
1. Dockerイメージビルド用のDockerfile
1. 開発用のdocker-compose.yamlファイル

## Dockerイメージ派生ツリー  
- tiryoh/ros-desktop-vnc:melodic  
  - compasskctros/melodic:latest  
    - compasskctros/melodic-turtlesim:latest  
    - compasskctros/melodic-usbcam:latest 
- tiryoh/ros-desktop-vnc:noetic  
  - compasskctros/noetic:latest  

できれば全てマルチアーキテクチャビルドに対応したい．

## Docker + ROS + USBカメラ  
1. `wsl -l -v`  
  - wlsのUbuntu20.04ディストリビューションが動作していることを確認する．  
1. `usbipd list`  
  - USBカメラをWindowsが認識しているか確認する．
  - USBカメラの _BUSID_ を確認する．  
1. `usbipd attach -w -b _BUSID_`  
  - USBカメラをWSLにアタッチする．  
1. `docker run --name ros-usbcam -p 6080:80 --shm-size=512m --device /dev/video0:/dev/video0 compasskctros/melodic-usbcam:latest`  
  - 必要であればDockerイメージをプルしてビルドする．  
  - 一回やればこのあとはコンテナ"ros-usbcam"を起動するだけで良い  