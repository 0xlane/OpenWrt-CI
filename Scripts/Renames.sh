#!/bin/bash

#批量重命名为 源码_型号_日期
for var in $OWRT_TYPE ; do
  for file in $(find ./ -type f -iname "*$var*.*" ! -iname "*.txt") ; do
    export ext=$(basename "$file" | cut -d '.' -f 2-)
    export name=$(basename "$file" | cut -d '.' -f 1 | grep -io "\($var\).*")
    export new_file="$OWRT_SOURCE"_"$name"_"$OWRT_DATE"."$ext"
    mv -f "$file" "$new_file"
  done
done
