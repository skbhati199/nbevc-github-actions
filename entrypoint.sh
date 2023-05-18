#!/bin/sh -l

npm start

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"