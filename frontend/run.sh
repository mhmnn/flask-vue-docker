#!/bin/bash
frontend="frontend"
docker stop ${frontend}
docker run -d -it -p 8080:80 --rm --name ${frontend} ${frontend}
