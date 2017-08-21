sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#sudo pip install --upgrade django
#sudo pip install --upgrade gunicorn

sudo gunicorn - b 0.0.0.0:8080 hello:app &

#django-admin startproject ask # создать проект
#python ./ask/manage.py startapp qa # создать приложение

#sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart

#sudo /etc/init.d/mysql restart
