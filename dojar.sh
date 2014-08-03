#!/bin/sh
#export LOCAL=$HOME/localdev/fancyfoods.dog
export LOCAL=`pwd`
if ! test -d $LOCAL/lib; then mkdir $LOCAL/lib; fi
pushd lib
echo "***** Web"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/web/MANIFEST.MF $LOCAL/lib/fancyfoods.web_1.0.0.jar fancyfoods/web  -C $LOCAL/src/fancyfoods/web WEB-INF
popd
echo "****** Web NLS"
pushd $LOCAL/src/fancyfoods/web/nls
jar cmfv $LOCAL/src/fancyfoods/web/nls/MANIFEST.MF $LOCAL/lib/fancyfoods.web.nls.fr_1.0.0.jar messages_en_US.properties messages_fr.properties
popd
echo "****** API"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/api/MANIFEST.MF $LOCAL/lib/fancyfoods.api_1.0.0.jar fancyfoods/api
popd
echo "****** Business"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/business/MANIFEST.MF $LOCAL/lib/fancyfoods.business_1.0.0.jar fancyfoods/business -C $LOCAL/src/fancyfoods/business OSGI-INF
popd
echo "****** Chocolate"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/department/chocolate/MANIFEST.MF $LOCAL/lib/fancyfoods.department.chocolate_1.0.0.jar fancyfoods/department/chocolate -C $LOCAL/src/fancyfoods/department/chocolate OSGI-INF
popd
echo "******* Cheese"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/department/cheese/MANIFEST.MF $LOCAL/lib/fancyfoods.department.cheese_1.0.0.jar   fancyfoods/department/cheese -C $LOCAL/src/fancyfoods/department/cheese OSGI-INF
popd
echo "******* Datasource"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/datasource/MANIFEST.MF $LOCAL/lib/fancyfoods.datasource_1.0.0.jar -C $LOCAL/src/fancyfoods/datasource OSGI-INF
popd
echo "******* Persistence"
pushd $LOCAL/classes
jar cmfv $LOCAL/src/fancyfoods/persistence/MANIFEST.MF $LOCAL/lib/fancyfoods.persistence_1.0.0.jar  fancyfoods/persistence -C $LOCAL/src/fancyfoods/persistence OSGI-INF  -C $LOCAL/src/fancyfoods/persistence persistence.xml
popd
echo "******** Done"
popd
