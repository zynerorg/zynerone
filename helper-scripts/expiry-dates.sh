#!/usr/bin/env bash

[[ -f zynerone.conf ]] && source zynerone.conf
[[ -f ../zynerone.conf ]] && source ../zynerone.conf

POSTFIX=$(echo | openssl s_client -connect ${ZYNERONE_HOSTNAME}:${SMTP_PORT} -starttls smtp 2>/dev/null | openssl x509 -inform pem -noout -enddate | cut -d "=" -f 2)
DOVECOT=$(echo | openssl s_client -connect ${ZYNERONE_HOSTNAME}:${IMAP_PORT} -starttls imap 2>/dev/null | openssl x509 -inform pem -noout -enddate | cut -d "=" -f 2)
NGINX=$(echo | openssl s_client -connect ${ZYNERONE_HOSTNAME}:${HTTPS_PORT} 2>/dev/null | openssl x509 -inform pem -noout -enddate | cut -d "=" -f 2)

echo "TLS expiry dates:"
echo "Postfix: ${POSTFIX}"
echo "Dovecot: ${DOVECOT}"
echo "Nginx:   ${NGINX}"
