#!/bin/bash

echo "push the image "
docker login
docker push vadimivlev/ibclientportal:1.0.0
