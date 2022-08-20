#!/bin/bash

library="/d/Comics"
repackFile="ComicInfo.xml"
repackDir="/d/ComicsRepacks"
mkdir -p "$repackDir"
for comic in "$library"/*.cb? "$library"/**/*.cb? ; do
  repack=$(7z l "$comic" "$repackFile" -ba) # undocumented 7-zip switch
  if [ "$repack" ]
    then
      echo "$comic"
      mv "$comic" "$repackDir/"
  fi
done
