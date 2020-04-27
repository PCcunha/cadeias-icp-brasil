#!/bin/bash
#Paulo Cunha
#https://github.com/PCcunha/cadeias-icp-brasil
#

DEST1=icp-brasil
DEST2=acs-adicionais

rm -f acs-icp-brasil.crt

for fn in $(file ${DEST1}/*.crt|grep data|sed 's/: *data//')
do
  mv $fn  $fn.der
  openssl x509 -inform der -in $fn.der -out $fn
done
rm *.der

for f in $(ls ${DEST1}/*.crt); do
  dos2unix $f > /dev/null
  echo "# $f" >>  acs-icp-brasil.crt
  openssl x509  -in $f >> acs-icp-brasil.crt
done

for fn in $(file ${DEST2}/*.crt|grep data|sed 's/: *data//')
do
  mv $fn  $fn.der
  openssl x509 -inform der -in $fn.der -out $fn
done
rm *.der

for f in $(ls ${DEST2}/*.crt); do
  dos2unix $f > /dev/null
  echo "# $f" >>  acs-icp-brasil.crt
  openssl x509  -in $f >> acs-icp-brasil.crt
done

cp acs-icp-brasil.crt  /etc/pki/tls/certs/acs-icp-brasil.crt