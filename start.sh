#!/bin/bash
backend="backend"
frontend="frontend"
cd backend
docker build -t ${backend} .
docker run -d -p 5000:80 --rm --name=${backend} -v $PWD:/app ${backend}
cd ../frontend
docker build -t ${frontend} .
docker run -d -it -p 8080:80 --rm --name ${frontend} ${frontend}
