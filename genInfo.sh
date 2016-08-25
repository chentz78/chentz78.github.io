#!/bin/bash

fOut=chentz_plain.txt

echo "Twitter: @chentz78" > $fOut
echo >> $fOut

echo "Keybase.io: chentz" >> $fOut
echo >> $fOut

echo "e-mail: cleverton dot hentz at gmail dot com" >> $fOut
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