#!/bin/sh
#export LOCAL=$HOME/localdev/fancyfoods.dog
export LOCAL=`pwd`
export CLASSDIR=$LOCAL/bin/classes
export LIBDIR=$LOCAL/bin/lib
if ! test -d $LOCAL/bin; then 
	echo "No bin directory!"
	exit
fi
if ! test -d $LIBDIR; then mkdir $LIBDIR; fi
echo "***** Web"
pushd $LIBDIR
jar cmfv $LOCAL/src/fancyfoods/web/MANIFEST.MF $LIBDIR/fancyfoods.web_1.0.0.jar fancyfoods/web  -C $LOCAL/src/fancyfoods/web WEB-INF
popd
echo "****** Web NLS"
pushd $LOCAL/src/fancyfoods/web/nls
jar cmfv $LOCAL/src/fancyfoods/web/nls/MANIFEST.MF $LIBDIR/fancyfoods.web.nls.fr_1.0.0.jar messages_en_US.properties messages_fr.properties
popd
echo "****** API"
pushd $CLASSDIR
jar cmfv $LOCAL/src/fancyfoods/api/MANIFEST.MF $LIBDIR/fancyfoods.api_1.0.0.jar fancyfoods/api
popd
echo "****** Business"
pushd $CLASSDIR
jar cmfv $LOCAL/src/fancyfoods/business/MANIFEST.MF $LIBDIR/fancyfoods.business_1.0.0.jar fancyfoods/business -C $LOCAL/src/fancyfoods/business OSGI-INF
popd
echo "****** Chocolate"
pushd $CLASSDIR
jar cmfv $LOCAL/src/fancyfoods/department/chocolate/MANIFEST.MF $LIBDIR/fancyfoods.department.chocolate_1.0.0.jar fancyfoods/department/chocolate -C $LOCAL/src/fancyfoods/department/chocolate OSGI-INF
popd
echo "******* Cheese"
pushd $CLASSDIR
jar cmfv $LOCAL/src/fancyfoods/department/cheese/MANIFEST.MF $LIBDIR/fancyfoods.department.cheese_1.0.0.jar   fancyfoods/department/cheese -C $LOCAL/src/fancyfoods/department/cheese OSGI-INF
popd
echo "******* Datasource"
pushd $CLASSDIR
jar cmfv $LOCAL/src/fancyfoods/datasource/MANIFEST.MF $LIBDIR/fancyfoods.datasource_1.0.0.jar -C $LOCAL/src/fancyfoods/datasource OSGI-INF
popd
echo "******* Persistence"
pushd $CLASSDIR
jar cmfv $LOCAL/src/fancyfoods/persistence/MANIFEST.MF $LIBDIR/fancyfoods.persistence_1.0.0.jar  fancyfoods/persistence -C $LOCAL/src/fancyfoods/persistence OSGI-INF  -C $LOCAL/src/fancyfoods/persistence persistence.xml
popd
echo "******** Done"
