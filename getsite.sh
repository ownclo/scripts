#!/bin/sh

SITE=$1
DOMAIN=`echo $SITE | awk -F/ '{print $3}'`

wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains $DOMAIN \
     --no-parent \
     $SITE
