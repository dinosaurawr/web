sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo gunicorn -c /home/box/web/etc/gunicorn-wsgi.conf
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf
sudo /etc/init.d/gunicorn restart