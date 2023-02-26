#!/bin/bash

result="$(curl -s 'http://localhost:5000/health')";
if [[ $result == "ok" ]]; then
    echo "ok"
    exit 0
else
    echo "not ok"
    exit 1
fi