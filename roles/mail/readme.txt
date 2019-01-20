 addgroup --system --gid 5000 vmail
 adduser --system --home /srv/vmail --uid 5000 --gid 5000 --disabled-password --disabled-login vmail


hist line  280 openssl etc


postmap hash:/etc/postfix/virtual_domains
then test existence of virtual_domains.db



/etc/ldap/ca_server.pem


dovecot + postfix user have to be added to ssl-certs groups to be able to read /etc/ssl/private/certs   

