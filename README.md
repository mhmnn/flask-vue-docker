This package consists of two Docker containers.


The first container is a Python Flask webserver, which is called "backend". It currently only serves a random number as a test configuration. It is configured in a fashion that it reloads every time 'backend/uwsgi.ini' is touched. The file '.on-save.json' contains the config for the atom 'on-save' package which touches the file whenever a .py file is saved.


The second one is a Vue App that connects to the Flask server to query a random number and display it. The docker-compose makes sure that the Vue auto-reload still functions properly even within the container.

The backend binds to port 5000, the frontend to 8080.

'start.sh' builds and starts both containers without the vue auto-reload.

'backend/run.sh' and 'frontend/run.sh' run each container individually.

'run-dev.sh' starts both containers in developer mode (with vue auto-reload).
