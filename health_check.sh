#!/bin/bash

result="$(curl -s 'https://jonde-pokedex.fly.dev/health')";
echo "$result";
if [[ $result == "ok" ]]; then
    echo "ok"
    exit 0
else
    echo "not ok"
    exit 1
fi