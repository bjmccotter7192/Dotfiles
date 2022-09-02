#!/usr/bin/env bash

NODE_MODULES=$PWD/node_modules
DIST=$PWD/dist
BUILD=$PWD/build

if [ -d $NODE_MODULES ]; then
	echo "Removing node_modules, please wait this could take some time........"
	rm -rf node_modules
fi

if [ -d $DIST ]; then
	echo "Removing dist directory, please wait this could take some time........"
	rm -rf dist
fi

if [ -d $BUILD ]; then
	echo "Removing build directory, please wait this could take some time........"
	rm -rf build
fi

echo "Finished removing all directories, please run your npm/yarn install again!"

echo "\nCleaning up yarn cache"
yarn cache clean --all
