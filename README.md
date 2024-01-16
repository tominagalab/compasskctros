# WS_COMPASS
## �͂��߂�  
COMPASS��ROS���ފJ���p�̃��|�W�g���D�ȉ��̃\�[�X�Q���܂ށD  
1. Docker�C���[�W�r���h�p��Dockerfile
1. �J���p��docker-compose.yaml�t�@�C��

## Docker�C���[�W�h���c���[  
- tiryoh/ros-desktop-vnc:melodic  
  - compasskctros/melodic:latest  
    - compasskctros/melodic-turtlesim:latest  
    - compasskctros/melodic-usbcam:latest 
- tiryoh/ros-desktop-vnc:noetic  
  - compasskctros/noetic:latest  

�ł���ΑS�ă}���`�A�[�L�e�N�`���r���h�ɑΉ��������D

## Docker + ROS + USB�J����  
1. `wsl -l -v`  
  - wls��Ubuntu20.04�f�B�X�g���r���[�V���������삵�Ă��邱�Ƃ��m�F����D  
1. `usbipd list`  
  - USB�J������Windows���F�����Ă��邩�m�F����D
  - USB�J������ _BUSID_ ���m�F����D  
1. `usbipd attach -w -b _BUSID_`  
  - USB�J������WSL�ɃA�^�b�`����D  
1. `docker run --name ros-usbcam -p 6080:80 --shm-size=512m --device /dev/video0:/dev/video0 compasskctros/melodic-usbcam:latest`  
  - �K�v�ł����Docker�C���[�W���v�����ăr���h����D  
  - �����΂��̂��Ƃ̓R���e�i"ros-usbcam"���N�����邾���ŗǂ�  