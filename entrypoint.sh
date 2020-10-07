#!/bin/sh -l

lftp sftp://$INPUT_USER:$INPUT_PASSWORD@$INPUT_HOST -e "mirror -v -R -P --exclude .git/ --exclude .github/ --exclude node_modules/ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
