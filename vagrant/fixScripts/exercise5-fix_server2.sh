#!/bin/bash
#add fix to exercise5-server2 here
echo "#!/bin/bash
sudo apt-get install sshpass -y
ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N '' -q
ssh-keyscan -H server1 >> ~/.ssh/known_hosts
sshpass -p 'vagrant' ssh-copy-id vagrant@server1
" > ./myscript.sh
sudo export VISUAL=vim
sudo export EDITOR=vim
sudo chmod +x /home/vagrant/myscript.sh
echo '@reboot sleep 120 && /home/vagrant/myscript.sh' | crontab -

