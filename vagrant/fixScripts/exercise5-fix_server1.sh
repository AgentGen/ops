#!/bin/bash
#add fix to exercise5-server1 here
sudo apt-get install sshpass -y
sudo rm /home/vagrant/.ssh/id_rsa
sudo echo "#!/bin/bash
while /bin/true; do
sleep 30
ssh-keyscan server2 >> /home/vagrant/.ssh/known_hosts
done &
" > /home/vagrant/myscript.sh
sudo echo "#!/bin/bash
while /bin/true; do
sleep 30
ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N '' -q
touch /home/vagrant/done.rsa
done &
" > /home/vagrant/myscript2.sh
sudo echo "#!/bin/bash
while /bin/true; do
sleep 30
sshpass -p 'vagrant' ssh-copy-id vagrant@server2
touch /home/vagrant/done.done
done &
" > /home/vagrant/myscript3.sh
sudo chmod +x /home/vagrant/myscript.sh
sudo chmod +x /home/vagrant/myscript2.sh
sudo chmod +x /home/vagrant/myscript3.sh
sudo /home/vagrant/myscript.sh &
sudo /home/vagrant/myscript2.sh &
sudo /home/vagrant/myscript3.sh &