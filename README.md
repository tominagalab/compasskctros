# WS_COMPASS
## はじめに  
COMPASSのROS教材開発用のリポジトリ．以下のソース群を含む．  
1. Dockerイメージビルド用のDockerfile

## Dockerイメージ派生ツリー  
- tiryoh/ros-desktop-vnc:melodic  
  - compasskctros/melodic:latest  
    - compasskctros/melodic-turtlesim:latest  
    - compasskctros/melodic-usbcam:latest 
- tiryoh/ros-desktop-vnc:noetic  
  - compasskctros/noetic:latest  

できれば全てマルチアーキテクチャビルドに対応したい．
