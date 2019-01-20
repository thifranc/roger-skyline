cd /var/lib/postgresql
PGPASSWORD='{{ preprod.db.password }}' pg_dump -C -h {{ hosts.db-master.hostname }}.{{ domain.name }}.{{ domain.extension }} -U {{ preprod.db.user }} {{ preprod.db.name }} > ok.sql
sudo -u postgres dropdb '{{ preprod.db.name }}'
sudo -u postgres psql < ok.sql
rm ok.sql
