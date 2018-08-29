#!/bin/bash

fOut=chentz_plain.txt

echo "Gab.ai: @Chentz" > $fOut
echo >> $fOut

echo "Twitter: @chentz78" >> $fOut
echo >> $fOut

echo "Personal Page: https://chentz.keybase.pub" >> $fOut
echo >> $fOut

echo "Keybase.io: chentz" >> $fOut
echo >> $fOut

echo "e-mail: cleverton dot hentz at gmail dot com" >> $fOut
echo >> $fOut

echo "Public bitcoin: 1GULGZz1Q8yuLwmQmxGGtRCbADkaQv7pAb" >> $fOut
echo >> $fOut

echo "$ date" >> $fOut
date >> $fOut
echo >> $fOut

echo "$ gpg --fingerprint 4D44D767B147B5ED" >> $fOut
gpg --fingerprint 4D44D767B147B5ED >> $fOut
echo >> $fOut

echo "$ gpg -a --export 4D44D767B147B5ED" >> $fOut
gpg -a --export 4D44D767B147B5ED >> $fOut
echo >> $fOut

gpg --armor --clearsign $fOut

mv $fOut.asc chentz.txt
