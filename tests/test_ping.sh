#!/bin/bash

hosts=("192.168.56.10" "192.168.56.11" "192.168.56.12")

for host in "${hosts[@]}"
do
  if ping -c 1 -W 1 $host > /dev/null 2>&1; then
    echo "Host $host jest dostępny (ping OK)"
  else
    echo "Host $host jest niedostępny (ping FAILED)"
  fi
done

