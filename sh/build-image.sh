#!/bin/bash


echo "Unzip ..."
unzip clientportal.gw.zip -d clientportal.gw 
echo "Copy conf ..."
cp conf.yaml clientportal.gw/root/  
echo "Build an image ..."
docker build -t vadimivlev/ibclientportal:1.0.0 -f Dockerfile . 
echo "Clean up ..."
rm -rf clientportal.gw