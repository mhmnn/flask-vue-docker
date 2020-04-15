#!/bin/bash
backend="backend"
docker stop ${backend}
docker run -d -p 5000:80 --rm --name=${backend} -v $PWD:/app ${backend}
