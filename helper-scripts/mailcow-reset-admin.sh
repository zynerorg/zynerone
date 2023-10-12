#!/usr/bin/env bash
[[ -f zynerone.conf ]] && source zynerone.conf
[[ -f ../zynerone.conf ]] && source ../zynerone.conf

if [[ -z ${DBUSER} ]] || [[ -z ${DBPASS} ]] || [[ -z ${DBNAME} ]]; then
	echo "Cannot find zynerone.conf, make sure this script is run from within the mailcow folder."
	exit 1
fi

echo -n "Checking MySQL service... "
if [[ -z $(docker ps -qf name=mariadb-zynerone) ]]; then
	echo "failed"
	echo "MySQL (mariadb-zynerone) is not up and running, exiting..."
	exit 1
fi

echo "OK"
read -r -p "Are you sure you want to reset the mailcow administrator account? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]; then
	echo -e "\nWorking, please wait..."
  random=$(</dev/urandom tr -dc _A-Z-a-z-0-9 2> /dev/null | head -c${1:-16})
  password=$(docker exec -it $(docker ps -qf name=dovecot-zynerone) doveadm pw -s SSHA256 -p ${random} | tr -d '\r')
	docker exec -it $(docker ps -qf name=mariadb-zynerone) mysql -u${DBUSER} -p${DBPASS} ${DBNAME} -e "DELETE FROM admin WHERE username='admin';"
  docker exec -it $(docker ps -qf name=mariadb-zynerone) mysql -u${DBUSER} -p${DBPASS} ${DBNAME} -e "DELETE FROM domain_admins WHERE username='admin';"
	docker exec -it $(docker ps -qf name=mariadb-zynerone) mysql -u${DBUSER} -p${DBPASS} ${DBNAME} -e "INSERT INTO admin (username, password, superadmin, active) VALUES ('admin', '${password}', 1, 1);"
	docker exec -it $(docker ps -qf name=mariadb-zynerone) mysql -u${DBUSER} -p${DBPASS} ${DBNAME} -e "DELETE FROM tfa WHERE username='admin';"
	echo "
Reset credentials:
---
Username: admin
Password: ${random}
TFA: none
"
else
	echo "Operation canceled."
fi
