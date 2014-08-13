#!/bin/sh
#pushd $HOME/localdev/fancyfoods.dog
TARGET=$HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
LOCAL=`pwd`
CLASSDIR=$LOCAL/bin/classes
if ! test -d $LOCAL/bin; then mkdir $LOCAL/bin; fi
if ! test -d $CLASSDIR; then mkdir $CLASSDIR; fi
javac -cp $TARGET/geronimo-servlet_2.5_spec-1.2.jar -sourcepath $LOCAL/src -d $CLASSDIR $LOCAL/src/fancyfoods/web/*.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $CLASSDIR $LOCAL/src/fancyfoods/api/Food.java $LOCAL/src/fancyfoods/api/SpecialOffer.java $LOCAL/src/fancyfoods/api/CurrentOffers.java $LOCAL/src/fancyfoods/api/Inventory.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $CLASSDIR $LOCAL/src/fancyfoods/business/OfferAggregator.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $CLASSDIR  $LOCAL/src/fancyfoods/department/chocolate/*.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $CLASSDIR  $LOCAL/src/fancyfoods/department/cheese/*.java
javac -cp $LOCAL/lib:$TARGET/geronimo-jpa_2.0_spec-1.1.jar -sourcepath $LOCAL/src -d $CLASSDIR  $LOCAL/src/fancyfoods/persistence/*.java
#popd
