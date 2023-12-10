#!/bin/bash
for f in *.m3u
do
  [[ -e "$f" ]] || break
  grep -qi "hq.*mp3" "$f" \
    && echo -e "Playlist $f contains a HQ file in mp3 format"
done
