#!/bin/bash
set -euo pipefail
if [ ! -d "$1" ]; then
echo "Folder not found: $1"
exit 1
fi
for f in "$1"/*; do
  if [ -f "$f" ]; then
	ext="${f##*.}";
	if [ "$ext" = "$f" ]; then continue; fi
	mkdir -p "$1/$ext"
	mv "$f" "$1/$ext/"
  fi
done


