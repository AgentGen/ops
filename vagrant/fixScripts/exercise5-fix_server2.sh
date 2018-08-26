#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install sshpass -y
sudo rm /home/vagrant/.ssh/id_rsa
sudo echo "#!/bin/bash
sleep 10
until ping -c 1 server1; do
sleep 3
done&
ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N '' -q 
ssh-keyscan -H server1 >> ~/.ssh/known_hosts 
sshpass -p 'vagrant' ssh-copy-id vagrant@server1 
" > /home/vagrant/myscript.sh
sudo chmod +x /home/vagrant/myscript.sh
/home/vagrant/myscript.sh &