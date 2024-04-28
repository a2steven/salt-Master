clear
vim /etc/hosts
yum -y update
clear
rpm --import https://repo.saltproject.io/salt/py3/redhat/7/x86_64/SALT-PROJECT-GPG-PUBKEY-2023.pub
 curl -fsSL https://repo.saltproject.io/salt/py3/redhat/7/x86_64/latest.repo | sudo tee /etc/yum.repos.d/sa
lt.repo
 curl -fsSL https://repo.saltproject.io/salt/py3/redhat/7/x86_64/latest.repo | sudo tee /etc/yum.repos.d/salt
 curl -fsSL https://repo.saltproject.io/salt/py3/redhat/7/x86_64/latest.repo | sudo tee /etc/yum.repos.d/salt.repo
clear
yum -y install salt-minion
systemctl enable salt-minion
systemctl start salt-minion
systemctl status salt-minion
cd /etc/salt
ls
cat /etc/hosts
reboot
clear
systemctl status salt-minion
clear
ifconfig
podman
clear
npm
cd /etc/tmux_config/
ls
chmod +x tmux_setup.sh 
./tmux_setup.sh 
tmux
clear
ls
cat tmux.conf 
cd /home/steven/
ls -tlra
mv container.bak container.sh
ls -tlra
clear
./container.sh 
yum -y install zsh
clear
yum -y install zsh
./container.sh 
uname -r
cat container.sh 
./container.sh password 8080
vim container.sh 
./container.sh P@ssw0rd1234 8080
cat container.sh 
mv container.sh container.bak
vim container.sh 
vi container.sh 
clear
!
vi container.sh 
./container.sh P@ssw0rd1234 8080
chmod +x container.sh 
./container.sh P@ssw0rd1234 8080
podman run -d --name "$container_name" -p 127.0.0.1:"$port":8080 -e PASSWORD="$password" -v "$HOME/.local:/home/coder/.local" -v "$HOME/.config:/home/coder/.config" -e TZ=Etc/UTC -e PUID="$user_id" -e GUID="$group_id" --userns=keep-id -v "$HOME:/home/coder/project" -u "$user_id:$group_id" vscode
container_name="oraclelinux-vscode-$USER"
podman run -d --name "$container_name" -p 127.0.0.1:"$port":8080 -e PASSWORD="$password" -v "$HOME/.local:/home/coder/.local" -v "$HOME/.config:/home/coder/.config" -e TZ=Etc/UTC -e PUID="$user_id" -e GUID="$group_id" --userns=keep-id -v "$HOME:/home/coder/project" -u "$user_id:$group_id" vscode
cat /etc/containers/registries.conf
container_name="oraclelinux-vscode-$USER"
podman run -d --name "$container_name" ... oraclelinux:8
clear
podman images
dnf install -y container-tools
yum -y update
podman version
podman run quay.io/podman/hello
vim /etc/containers/registries.conf
podman run quay.io/podman/hello
vim /etc/containers/registries.conf
podman run quay.io/podman/hello
vim /etc/containers/registries.conf
podman run quay.io/podman/hello
vim /etc/containers/registries.conf
podman run quay.io/podman/hello
vim /etc/containers/registries.conf
podman run quay.io/podman/hello
podman search oracle --limit 5
podman images
podman pull container-registry.oracle.com/os/oraclelinux:8-slim
podman images
podman inspect oraclelinux:8-slim
pwd
ls
./container.sh 
./container.sh P@ssw0rd 8080
podman images
./container.sh P@ssw0rd 8080 oraclelinux:8-slim
ls
vim container.sh 
vi container.sh 
#!/bin/zsh
container_name="oraclelinux-vscode-$USER"
password="$1"
port="$2"
image_name="$3"
command="$4"
user_id="$(id -u)"
group_id="$(id -g)"
# Check for running container
running_container=$(podman ps -f name="$container_name" | grep "$container_name")
if [[ -n "$running_container" ]]; then     echo "Found already running container:";     echo "$running_container"; elif podman ps -a -f name="$container_name" | grep -q "$container_name"; then     echo "Found stopped container, starting it...";     podman start "$container_name";     podman ps -f name="$container_name"; else     echo "No existing container found, creating one...";     echo "UI password will be: $password";     echo "VSCode will run on port: $port";      params=(       --name "$container_name"       -p 127.0.0.1:"$port":8080       -e PASSWORD="$password"       -v "$HOME/.local:/home/coder/.local"       -v "$HOME/.config:/home/coder/.config"       -e TZ=Etc/UTC       -e PUID="$user_id"       -e GUID="$group_id"       --userns=keep-id       -v "$HOME:/home/coder/project"       -u "$user_id:$group_id"     );      podman run -d "${params[@]}" $image_name $command
#!/bin/zsh
container_name="oraclelinux-vscode-$USER"
password="$1"
port="$2"
image_name="$3"
command="$4"
user_id="$(id -u)"
group_id="$(id -g)"
# Check for running container
running_container=$(podman ps -f name="$container_name" | grep "$container_name")
if [[ -n "$running_container" ]]; then     echo "Found already running container:";     echo "$running_container"; elif podman ps -a -f name="$container_name" | grep -q "$container_name"; then     echo "Found stopped container, starting it...";     podman start "$container_name";     podman ps -f name="$container_name"; else     echo "No existing container found, creating one...";     echo "UI password will be: $password";     echo "VSCode will run on port: $port";      params=(       --name "$container_name"       -p 127.0.0.1:"$port":8080       -e PASSWORD="$password"       -v "$HOME/.local:/home/coder/.local"       -v "$HOME/.config:/home/coder/.config"       -e TZ=Etc/UTC       -e PUID="$user_id"       -e GUID="$group_id"       --userns=keep-id       -v "$HOME:/home/coder/project"       -u "$user_id:$group_id"     );      podman run -d "${params[@]}" $image_name $command
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vim container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vim container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vim container.sh 
cat container.sh 
vi container.sh 
./container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vim container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vim container.sh 
vi container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vi container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
podman rm 8f2dfdc6441b3e4ba34fb619b1bcd3d3c15394c57e83c525c84268d58f2cd54e
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vi container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
dnf install -y code-server && code-server
dnf install -y code-server 
dnf install -y code-server* 
dnf install -y *code-server* 
clear
cat container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
vi container.sh 
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
cat container.sh 
vi container.sh 
clear
./container.sh P@ssw0rd 8080 oraclelinux:8-slim code-server
podman image
podman images
clear
cat container.sh 
curl localhost:8080
curl http://192.168.1.177:8080
podman ps
podman ps -a
podman logs oraclelinux-vscode-root
clear
ls -tlra
cat .bashrc 
cat .bash_profile 
clear
ls -tlra
cat .bashrc 
cat /etc/bashrc 
cd 
ls -tlra
cat .bashrc 
cd /etc/profile.d/
ls -ltra
cat java.sh 
java
clear
ls -tlrla
rm -rf java.sh 
ls -tlra
yum -y remove java*
yum -y remove openjdk*
yum search java
lcear
clear
rpm -qa | grep open
yum -y remove *openjdk*
clear
java
ls -tlra
rm -rf java.sh 
clear
java
ls -tlra
rm -rf java.sh 
ls -tlra
clear
ls -tlra
ls -ltra
which java
java --version
vim /etc/hosts
clear
vim /etc/salt/minion.d/minion.conf
systemctl restart salt-minion
nslookup saltmaster.dev.com  # Run this on each minion
nslookup saltmaster.dev.com  
ping saltmaster
cat /etc/hosts
cat /etc/salt/minion.d/minion.conf 
vim /etc/salt/minion.d/minion.conf 
systemctl restart salt-minion
tail -f /var/log/salt/minion 
sudo rm /etc/salt/pki/minion/minion_master.pub
systemctl restart salt-minion
which systemctl
find / -iname app.js
find / -iname *.js
clear
cd
pwd
mkdir myproject1
cd myproject1/
pwd
cd ..
ls -tlra
cd cd myproject1/
cd myproject1/
ls -tlra
pwd
nvim app.js 
podman
clear
vim podGui.sh
nvim podGui.sh
vi podGui.sh
nvim podGui.sh 
cat podGui.sh 
cd /etc/containers/
ls
vim registries.conf
podman run -d $params docker.io/codercom/code-server:latest
podman ps
cd /usr/local/bin/
ls
# Replace -p 127.0.0.1:$port:8080 with -p 0.0.0.0:$port:8080
sed -i 's/-p 127.0.0.1:8019:8080/-p 0.0.0.0:8019:8080/' /usr/local/bin/pod_gui.sh
vim /usr/local/bin/pod_gui.sh 
podman ps -a
clear
cd
ls -tlra
cd myproject1/
ls -tlra
git
clear
git status
code-server --folder /srv/mySalt_project
cd /srv/mySalt_project
git status
git init
git remote add origin https://github.com/a2steven/salt-Master.git
git pull origin main
curl -fsSL https://code-server.dev/install.sh | sh
curl -fsSL https://code-server.dev/install.sh | sudo bash
which code-server
git -C /srv/mySalt_project status
code-server --folder /srv/mySalt_project
code-server /srv/mySalt_project
vim /root/.config/code-server/config.yaml 
code-server /srv/mySalt_project
clear
pwd
git config user.name
git config user.email
git config --local user.name "a2steven"
git config --local user.email "4stevenson@gmail.com"
systemctl restart code-server
which code-sever
history
which code-server
which code-sever
systemctl restart code-server
which code-server
sudo nano /etc/systemd/system/code-server.service
vim /etc/systemd/system/code-server.service
sudo systemctl daemon-reload
systemctl enable code-server
systemctl start code-server
systemctl status code-server
systemctl restart code-server
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
pwd
git status
pwd
git status
git remote add origin http://192.168.1.177:8019/?folder=/home/coder
git fetch
git branch -u origin/main main
git pull
git clone http://192.168.1.177:8019/?folder=/home/coder .
git clone http://192.168.1.177:8019/?folder=/home/coder /path/to/new-directory
pwd
git clone http://192.168.1.177:8019/?folder=/home/coder /srv/mySalt_project
rm -rf /srv/mySalt_project/*
rm -rf /srv/mySalt_project/.git
git clone http://192.168.1.177:8019/?folder=/home/coder .
ls -ltra
rm -rf .*
ls -tlra
git clone http://192.168.1.177:8019/?folder=/home/coder .
