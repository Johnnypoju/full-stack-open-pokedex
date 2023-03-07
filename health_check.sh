#!/bin/bash

result="$(curl -s 'https://jonde-pokedex.fly.dev/health')";

if [[ $result == "ok" ]]; then
    
    exit 1
else
    
    exit 0
fi