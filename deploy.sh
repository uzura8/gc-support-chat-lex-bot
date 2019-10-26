#!/bin/sh

# include config file
CONFIG_FILE="`dirname $0`/setup.conf"
if [ ! -f $CONFIG_FILE ]; then
    echo "Not found config file : ${CONFIG_FILE}" ; exit 1
fi
. $CONFIG_FILE

zip -r ${FUNCTION}.zip index.js node_modules
mv ${FUNCTION}.zip /tmp/
aws lambda update-function-code --region ${REGION} --function-name ${FUNCTION} --zip-file fileb:///tmp/${FUNCTION}.zip --publish --profile ${PROFILE_NAME}
