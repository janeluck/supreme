#!bin/bash
# quickly convert html filenames for use on a dossy system
# only handles file extensions, not filenames

for i in *.html; do
  if [ -f ${i%l} ]; then
    echo ${i%l} already exists
  else
    mv $i ${i%l}
  fi
done
