# cadeias-icp-brasil

Script para download automático das cadeias da ICP-brasil para utilização nos webservers em linux.

Funciona com Apache, Nginx, etc...

Colocar no cron para periodicamente executar o script generate_certs.sh.

O script copia o seu resultado para /etc/pki/tls/certs/acs-icp-brasil.crt.

Utilizar no servidor web o caminho /etc/pki/tls/certs/acs-icp-brasil.crt

