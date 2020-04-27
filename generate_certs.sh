#!/bin/bash
#Paulo Cunha
#https://github.com/PCcunha/cadeias-icp-brasil
#

./download_icp.sh

QTD=`ls icp-brasil/*.crt | wc -l`

#testa para saber se o download foi ok e extraiu os arquivos.
if (( $QTD > 100 )); then
    ./convert_certs.sh
else
echo "Download mal sucedido."
fi
