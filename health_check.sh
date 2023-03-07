#!/bin/bash

result="$(curl -s 'https://jonde-pokedex.fly.dev/health')";

if [[ $result == "ok" ]]; then
    echo "ok"
    exit 1
else
    echo "not ok"
    exit 0
fi