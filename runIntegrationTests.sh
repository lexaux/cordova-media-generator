#!/bin/sh
cwd=$(pwd)
cd ..  
rm -rf cordova-test-app
git clone https://github.com/hypery2k/cordova-demo-app.git cordova-test-app
cd cordova-test-app
npm install
bower install
mkdir images
cp ../cordova-media-generator/images/* images/
cp ../cordova-media-generator/mediagen-config.json .
cordova-media-gen
echo "Changing back to plugin directy: "$cwd
cd $cwd