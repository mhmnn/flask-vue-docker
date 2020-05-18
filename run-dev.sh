#!/bin/bash
backend="backend"
frontend="frontend"
docker stop ${backend}
docker stop ${frontend}
docker stop frontend_frontend_1
cd backend
docker run -d -p 5000:80 --rm --name=${backend} -v $PWD:/app ${backend}
cd ../frontend
docker-compose up --build -d
