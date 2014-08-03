#!/bin/sh
<<<<<<< HEAD
pushd $HOME/localdev/fancyfoods.dog
TARGET=$HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
cp lib/* $TARGET/load
popd
=======
#pushd $HOME/localdev/fancyfoods.dog
LOCAL=`pwd`
TARGET=$HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
if ! test -d $TARGET; then 
	echo "*** ERROR: $TARGET does not exist, install Aries"; 
else
 	if ! test -d $LOCAL/lib; then 
		echo "*** ERROR: lib directory does not exist."; 
	else
		cp $LOCAL/lib/* $TARGET/load
	fi
fi
#popd
>>>>>>> FETCH_HEAD
