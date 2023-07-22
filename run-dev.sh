#!/bin/bash

docker build -t grapghql-flask .
docker run -p 5000:5000 grapghql-flask