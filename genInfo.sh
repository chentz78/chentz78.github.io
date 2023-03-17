#!/bin/bash

fOut=chentz_plain.txt

echo "Gab.ai: @Chentz" > $fOut
echo >> $fOut

#echo "Twitter: @chentz78" >> $fOut
#echo >> $fOut

echo "Personal Page: https://chentz78.github.io/" >> $fOut
echo >> $fOut

echo "Keybase.io: chentz" >> $fOut
echo >> $fOut

echo "e-mail: cleverton at pm dot me" >> $fOut
echo "      : cleverton dot hentz at protonmail dot ch" >> $fOut
echo "      : cleverton dot hentz at gmail dot com" >> $fOut
echo >> $fOut

echo "Public bitcoin: 1GULGZz1Q8yuLwmQmxGGtRCbADkaQv7pAb" >> $fOut
echo >> $fOut

echo "$ date" >> $fOut
date >> $fOut
echo >> $fOut

#key=0x4D44D767B147B5ED
key=0x6EE40E7A050BA983
echo "$ gpg --fingerprint $key" >> $fOut
gpg --fingerprint $key | head -n 3 >> $fOut
echo >> $fOut

echo "$ gpg -a --export $key" >> $fOut
gpg -a --export $key >> $fOut
echo >> $fOut

gpg --armor --clearsign $fOut

mv $fOut.asc chentz.txt
rm $fOut
