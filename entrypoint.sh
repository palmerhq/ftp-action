#!/bin/sh -l

lftp sftp://$INPUT_USER:$INPUT_PASSWORD@$INPUT_HOST -e "mirror --parallel=3 --verbose -v -R $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
