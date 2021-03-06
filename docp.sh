#!/bin/sh
#pushd $HOME/localdev/fancyfoods.dog
LOCAL=`pwd`
LIBDIR=$LOCAL/bin/lib
TARGET=$HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
if ! test -d $TARGET; then 
	echo "*** ERROR: $TARGET does not exist, install Aries"; 
else
 	if ! test -d $LIBDIR; then 
		echo "*** ERROR: lib directory does not exist."; 
	else
		cp $LIBDIR/* $TARGET/load
	fi
fi
#popd
