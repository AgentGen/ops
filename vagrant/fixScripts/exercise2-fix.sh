#!/bin/bash
#add fix to exercise2 here
cd /etc/
sudo sed -i '/127.0.0.1 www.ascii-art.de/d' ./hosts
