#!/bin/bash

declare -A hosts=(
  ["Ubuntu"]="http://localhost"
  ["CentOS"]="http://192.168.56.11"
  ["openSUSE"]="http://192.168.56.12"
)

expected_text="Witamy w aplikacji VMagic WebApp!"

for name in "${!hosts[@]}"; do
  echo "Testuję $name pod adresem ${hosts[$name]} ..."
  response=$(curl -s "${hosts[$name]}")

  if echo "$response" | grep -q "$expected_text"; then
    echo "Strona działa i zawiera oczekiwany tekst."
  else
    echo "Brak oczekiwanego tekstu lub strona niedostępna!"
  fi

  echo "  --- Zawartość strony ---"
  echo "$response"
  echo "  -----------------------"
done

