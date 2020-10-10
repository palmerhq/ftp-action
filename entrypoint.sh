#!/bin/sh -l

lftp sftp://$INPUT_USER:$INPUT_PASSWORD@$INPUT_HOST -e "set ftp:ssl-force true; set ftp:ssl-protect-data true; set ssl:verify-certificate no; set sftp:auto-confirm yes; mirror -v -R  --exclude .git/ --verbose=3 --parallel=8  $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
