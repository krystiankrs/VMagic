#!/bin/bash
set -e

hosts=("localhost" "192.168.56.11" "192.168.56.12")
hostnames=("ubuntu" "centos" "opensuse")

echo "Test otwartych portów 22 i 80 na lokalnej i zdalnych maszynach:"

for i in "${!hosts[@]}"; do
  echo "Porty na ${hostnames[$i]} (${hosts[$i]}):"
  for port in 22 80; do
    nc -z -w3 ${hosts[$i]} $port && echo "Port $port jest OTWARTY" || echo "Port $port jest ZAMKNIĘTY"
  done
  echo ""
done

