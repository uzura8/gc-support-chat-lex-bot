#!/bin/sh

zip -r answerBySelectedNum.zip index.js node_modules
mv answerBySelectedNum.zip /tmp/
aws lambda update-function-code --region us-west-2 --function-name answerBySelectedNum --zip-file fileb:///tmp/answerBySelectedNum.zip --publish --profile uzura
