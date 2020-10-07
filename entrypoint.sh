#!/bin/sh -l

#lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
lftp sftp://$INPUT_USER:$INPUT_PASSWORD@$INPUT_HOST -e "mirror -v -R –exclude .git/ –exclude .github/ -exclude node_modules/ $INPUT_LOCALDIR $INPUT_REMOTEDIR"; quit
