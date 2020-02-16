sudo docker-compose build
sudo docker-compose run app sh -c "django-admin.py startproject app ."
sudo docker-compose run app sh -c "python manage.py test"
sudo docker-compose run app sh -c "python manage.py test && flake8"
sudo docker-compose run app sh -c "python manage.py startapp core"
sudo docker-compose run app sh -c "python manage.py makemigrations core"
sudo docker-compose run app sh -c "python manage.py createsuperuser"
sudo docker-compose run app sh -c "python manage.py startapp user"
sudo docker-compose up
