#!/bin/zsh


container_name=code-server-$USER
password=$1
port=$2
user_id=$(id -u)
group_id=$(id -g)

if podman ps -f name=$container_name  | grep -q $container_name 
then
    echo "Found already running container"
    podman ps -f name=$container_name
elif podman ps -a  -f name=$container_name | grep -q $container_name
then
    echo "$(podman start $container_name) fond starting"
    podman ps -f name=$container_name
else


    if [ "$password" = "" ]
    then
        password=$(cat /dev/urandom | tr -dc '0-9a-zA-Z' | head -c10)
    fi

    if [ "$port" = "" ]
    then
        port="80$(shuf -i 10-99 -n 1)"
    fi
    
    echo "UI password will be $password"
    echo "VSCode will run on port $port"
    
    params=(
      --name $container_name 
      -p 0.0.0.0:$port:8080 
      -e PASSWORD=$password 
      -v "$HOME/.local:/home/coder/.local" 
      -v "$HOME/.config:/home/coder/.config" 
      -e TZ=Etc/UTC 
      -e PUID=$user_id 
      -e GUID=$group_id 
      --userns=keep-id 
      -v "$HOME:/home/coder/project" 
      -u $user_id:$group_id 
      )
  podman run -d $params codercom/code-server:latest
fi
