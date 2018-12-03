#!/usr/bin/env bash

# for i in `find $(pwd) -name publicTypeIndex.ttl` ; do bin/fixsolidterms.sh "$i" ; done

FILE=$1
TMPFILE=/tmp/solidterms.ttl

sed 's/https:\/\/www.w3.org\/ns\/solid\/terms#/http:\/\/www.w3.org\/ns\/solid\/terms#/g' "$FILE" > "$TMPFILE"
touch -r "$TMPFILE" "$FILE"
mv "$TMPFILE" "$FILE"
