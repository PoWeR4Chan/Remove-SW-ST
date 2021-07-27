#!/bin/sh

cd $1
find ./ -mmin +5 -type f -name '*-ST*.mp4' -not -path "./Downloads/*" | xargs -I{} sh -c 'mv -v "$0" "${0/.1080p-ST/}"' {}
find ./ -mmin +5 -type f -name '*-ST*.mp4' -not -path "./Downloads/*" | xargs -I{} sh -c 'mv -v "$0" "${0/-ST/}"' {}

find ./ -mmin +5 -type f -name '*-SW*.mp4' -not -path "./Downloads/*" | xargs -I{} sh -c 'mv -v "$0" "${0/.1080p-SW/}"' {}
find ./ -mmin +5 -type f -name '*-SW*.mp4' -not -path "./Downloads/*" | xargs -I{} sh -c 'mv -v "$0" "${0/-SW/}"' {}
 
