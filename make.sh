#!/bin/sh

rm -rf out
mkdir out

for line in `ls src`
do
  cat src/${line} >> out/out.md
done

pandoc -s out/out.md -o out/out.docx

