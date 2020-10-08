#!/bin/sh -l

lftp sftp://$INPUT_USER:$INPUT_PASSWORD@$INPUT_HOST -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; mirror -v -R  --exclude .git/  --exclude .DS_Store --exclude .data/ --exclude node_modules/ --verbose=3 --parallel=8  $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
