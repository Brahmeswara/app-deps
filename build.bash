#!/bin/bash

LAYER_BASE=.
LAYER_DEST=./dist

#if ! test -d "$LAYER_BASE" ; then
#   echo "Directory $LAYER_BASE not found....and exiting"
#    exit
#fi

# clone the repo
#echo '--> cloning repo...'
#git clone --branch main https://github.com/Brahmeswara/bp-config-core.git

echo '--> Preparing app-deps layer..'
cd $LAYER_BASE
echo "--> Running npm install --production from `pwd`"
npm install --production


# create Layer 
if test -d "$LAYER_DEST" ; then
    echo "----> Directory $LAYER_DEST exists and is being removed..."
    rm -rf $LAYER_DEST
fi

echo "-->Creating $LAYER_DEST ..."
mkdir -p $LAYER_DEST/nodejs/node_modules
echo "--> Copying $LAYER_BASE/node_modules to $LAYER_DEST/nodejs/node_modules.."
mv $LAYER_BASE/node_modules/@docudata $LAYER_DEST/nodejs/node_modules/@docudata

echo '--> Done..'
