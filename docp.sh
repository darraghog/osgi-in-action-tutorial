#!/bin/sh
pushd $HOME/localdev/fancyfoods.dog
TARGET=$HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
cp lib/* $TARGET/load
popd
