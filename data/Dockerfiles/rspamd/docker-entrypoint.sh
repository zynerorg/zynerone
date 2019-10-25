#!/bin/bash

mkdir -p /etc/rspamd/plugins.d \
  /etc/rspamd/custom

touch /etc/rspamd/rspamd.conf.local \
  /etc/rspamd/rspamd.conf.override

chmod 755 /var/lib/rspamd

[[ ! -f /etc/rspamd/override.d/worker-controller-password.inc ]] && echo '# Autogenerated by mailcow' > /etc/rspamd/override.d/worker-controller-password.inc

DOVECOT_V4=
DOVECOT_V6=
until [[ ! -z ${DOVECOT_V4} ]]; do
  DOVECOT_V4=$(dig a dovecot +short)
  DOVECOT_V6=$(dig aaaa dovecot +short)
  [[ ! -z ${DOVECOT_V4} ]] && break;
  echo "Waiting for Dovecot"
  sleep 3
done
echo ${DOVECOT_V4}/32 > /etc/rspamd/custom/dovecot_trusted.map
if [[ ! -z ${DOVECOT_V6} ]]; then
  echo ${DOVECOT_V6}/128 >> /etc/rspamd/custom/dovecot_trusted.map
fi

chown -R _rspamd:_rspamd /var/lib/rspamd \
  /etc/rspamd/local.d \
  /etc/rspamd/override.d \
  /etc/rspamd/custom \
  /etc/rspamd/rspamd.conf.local \
  /etc/rspamd/rspamd.conf.override \
  /etc/rspamd/plugins.d

# Fix missing default global maps, if any
# These exists in mailcow UI and should not be removed
touch /etc/rspamd/custom/global_mime_from_blacklist.map \
  /etc/rspamd/custom/global_rcpt_blacklist.map \
  /etc/rspamd/custom/global_smtp_from_blacklist.map \
  /etc/rspamd/custom/global_mime_from_whitelist.map \
  /etc/rspamd/custom/global_rcpt_whitelist.map \
  /etc/rspamd/custom/global_smtp_from_whitelist.map \
  /etc/rspamd/custom/sa-rules \
  /etc/rspamd/custom/dovecot_trusted.map \
  /etc/rspamd/custom/ip_wl.map \
  /etc/rspamd/custom/fishy_tlds.map \
  /etc/rspamd/custom/bad_words.map \
  /etc/rspamd/custom/bad_asn.map \
  /etc/rspamd/custom/bad_words_de.map

# www-data (82) group needs to write to these files
chown -R _rspamd:82 /etc/rspamd/custom
chmod -R g+w /etc/rspamd/custom

# Run hooks
for file in /hooks/*; do
  if [ -x "${file}" ]; then
    echo "Running hook ${file}"
    "${file}"
  fi
done

exec "$@"
