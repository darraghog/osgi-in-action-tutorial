#!/bin/sh
#pushd $HOME/localdev/fancyfoods.dog
TARGET=$HOME/localdev/aries/samples-1.0.0/blog/blog-assembly/target
LOCAL=`pwd`
if ! test -d $LOCAL/classes; then mkdir $LOCAL/classes; fi
javac -cp $TARGET/geronimo-servlet_2.5_spec-1.2.jar -sourcepath $LOCAL/src -d $LOCAL/classes src/fancyfoods/web/*.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $LOCAL/classes $LOCAL/src/fancyfoods/api/Food.java src/fancyfoods/api/SpecialOffer.java src/fancyfoods/api/CurrentOffers.java src/fancyfoods/api/Inventory.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $LOCAL/classes $LOCAL/src/fancyfoods/business/OfferAggregator.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $LOCAL/classes  $LOCAL/src/fancyfoods/department/chocolate/*.java
javac -cp $LOCAL/lib -sourcepath $LOCAL/src -d $LOCAL/classes  $LOCAL/src/fancyfoods/department/cheese/*.java
javac -cp $LOCAL/lib:$TARGET/geronimo-jpa_2.0_spec-1.1.jar -sourcepath $LOCAL/src -d $LOCAL/classes  $LOCAL/src/fancyfoods/persistence/*.java
#popd
