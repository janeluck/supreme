 #!/bin/sh
Name=$1
ExcuteCommand="cd ~/downloads && touch ${Name}.txt"
sshpass -p janeluck2016 ssh root@23.105.216.193 -p 26391 -t $ExcuteCommand
echo "success"