#!/bin/bash

for fname in *; do
  name="${fname%\.*}"
  extension="${fname#$name}"
  newname="${name//./_}"
	newname1="${newname//-/_}"
	newname2="${newname1// /_}"
  newfname="$newname2""$extension"
  if [ "$fname" != "$newfname" ]; then
    echo mv "$fname" "$newfname"
    mv "$fname" "$newfname"
  fi
done
