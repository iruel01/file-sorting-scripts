#!/bin/bash
rm -rf small
mkdir small
for i in "*"; do
	if $(identify -format "%h" $i <= 720); then
	mv ./"$i" small/
fi
done
ls small/
