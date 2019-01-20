cd /var/www/crud_users/
git checkout master
git pull origin master
git checkout preprod
git merge master
systemctl restart crud_users.service
