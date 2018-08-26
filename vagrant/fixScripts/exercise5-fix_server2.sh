#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install sshpass -y
sudo rm /home/vagrant/.ssh/id_rsa
sudo echo "#!/bin/bash
sleep 20
touch /home/vagrant/.ssh/known_hosts
chmod 777 /home/vagrant/.ssh/known_hosts
echo "StrictHostKeyChecking=no" > /home/vagrant/.ssh/config
sudo service ssh restart
#touch /home/vagrant/done.host
ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N '' -q
#touch /home/vagrant/done.rsa
sshpass -p 'vagrant' ssh-copy-id vagrant@server1
#touch /home/vagrant/done.done
echo $0
" > /home/vagrant/myscript.sh
sudo chmod +x /home/vagrant/myscript.sh
sudo su -c /home/vagrant/myscript.sh -s /bin/sh vagrant &