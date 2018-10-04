#!/bin/sh
set -e

# # download mjpro150
# mkdir /root/.mujoco
# cd /root/.mujoco
# wget https://www.roboti.us/download/mjpro150_linux.zip
# unzip mjpro150_linux.zip

# copy the mujoco license key into the container
# echo $MUJOCO_KEY | base64 --decode > /root/.mujoco/mjkey.txt
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/.mujoco/mjpro150/bin

# git clone https://github.com/deepmind/dm_control.git
# pip3 install ./dm_control

export VIZDOOM_ROOT=`pip show vizdoom 2>/dev/null | awk '/Location/{print $2}'`/vizdoom

cd /root/src/

exec "$@"