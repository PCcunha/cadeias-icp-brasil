#!/bin/bash
#Paulo Cunha
#https://github.com/PCcunha/cadeias-icp-brasil
#

HTTPADDR=http://acraiz.icpbrasil.gov.br/credenciadas/CertificadosAC-ICP-Brasil/ACcompactado.zip
DEST=icp-brasil
mkdir -p ${DEST}


rm -f ${DEST}/*.crt
rm -f ${DEST}/*.zip

wget "$HTTPADDR" -O ${DEST}/acraiz.zip
unzip ${DEST}/acraiz.zip -d ${DEST}

