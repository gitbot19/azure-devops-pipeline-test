#!/bin/bash
echo "Hello World"
docker system prune
echo "======> Prune complete"
echo "========> Build started"
docker build --no-cache -t flask-sample:latest .
echo "==========> Docker run started"
docker run -d -p 5000:5000 flask-sample