#!/bin/bash


echo "Unzip ..."
unzip clientportal.beta.gw.zip -d clientportal.gw 
echo "Copy conf ..."
cp conf.yaml clientportal.gw/root/  
echo "Build an image ..."
docker build -t vadimivlev/ibclientportal:beta1.0.0 -f Dockerfile . 
echo "Clean up ..."
rm -rf clientportal.gw

echo "push the image "
docker login
docker push vadimivlev/ibclientportal:beta1.0.0
