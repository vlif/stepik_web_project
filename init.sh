sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo pip install --upgrade django
sudo pip install --upgrade gunicorn

django-admin startproject ask
./ask/manage.py startapp qa

#sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart

#sudo /etc/init.d/mysql restart
