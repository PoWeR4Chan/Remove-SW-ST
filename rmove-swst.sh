#!/bin/sh

cd $1
find ./ -mmin +5 -type f -name '*-ST*.mp4' -not -path "./TV/Downloads/*" | rename -f 's/.1080p-ST//'
find ./ -mmin +5 -type f -name '*-ST*.mp4' -not -path "./TV/Downloads/*" | rename -f 's/-ST//'

find ./ -mmin +5 -type f -name '*-SW*.mp4' -not -path "./TV/Downloads/*" | rename -f 's/.1080p-SW//'
find ./ -mmin +5 -type f -name '*-SW*.mp4' -not -path "./TV/Downloads/*" | rename -f 's/-SW//'

