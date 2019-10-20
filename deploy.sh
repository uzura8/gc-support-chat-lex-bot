#!/bin/sh

zip -r answerBySelectedNum.zip index.js node_modules
mv answerBySelectedNum.zip /tmp/
aws lambda update-function-code --region your-reagion --function-name your-function --zip-file fileb:///tmp/your-function.zip --publish --profile your-profile-name
