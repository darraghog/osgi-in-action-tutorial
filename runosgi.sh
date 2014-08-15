#!/bin/sh
cd $HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
java  -XX:-UseSplitVerifier -jar org.eclipse.osgi-3.7.0.v20110613.jar -console -clean

