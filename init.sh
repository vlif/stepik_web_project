sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo ln -s /home/box/web/etc/gunicorndjango.conf /etc/gunicorn.d/testdj
#sudo /etc/init.d/gunicorn restart

#sudo pip install --upgrade django
#sudo pip install --upgrade gunicorn

sudo gunicorn -b 0.0.0.0:8080 hello:app &
sudo gunicorn -b 0.0.0.0:8000 --pythonpath /home/box/web/ask ask.wsgi:application &

#django-admin startproject ask # создать проект
#python ./ask/manage.py startapp qa # создать приложение

#sudo /etc/init.d/mysql restart
sudo /etc/init.d/mysql start

#mysql -uroot -e "create database myproject;"
#mysql -uroot -e "CREATE USER 'enth'@'localhost' IDENTIFIED BY 'password';"
#mysql -uroot -e "GRANT ALL PRIVILEGES ON * . * TO 'enth'@'localhost';"
#mysql -uroot -e "FLUSH PRIVILEGES;"

#mysql -uroot -e "CREATE DATABASE stepic_web;"
#mysql -uroot -e "GRANT ALL PRIVILEGES ON stepic_web.* TO 'box'@'localhost' WITH GRANT OPTION;"
