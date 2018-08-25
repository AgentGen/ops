#!/bin/bash
#add fix to exercise5-server2 here

sudo echo "#!/bin/bash
sudo apt-get install sshpass -y
ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N '' -q
ssh-keyscan -H server2 >> ~/.ssh/known_hosts
sshpass -p 'vagrant' ssh-copy-id vagrant@server2
sudo apt-get install sshpass -y" > /etc/profile.d/myscript.sh
