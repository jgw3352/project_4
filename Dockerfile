FROM python:3.9.0

WORKDIR /home/

RUN echo "dasfsdddaf"

RUN echo "dasfsd1dd111ddaf"

RUN git clone https://github.com/jgw3352/project_4.git

WORKDIR /home/project_4/

RUN echo "SECRET_KEY=django-insecure-ozy*=y!14s*3%=7&z)dmr@e!v%3#6w&o#)z@-q_*kh(y+8_%qd" > .env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=djangoProject4.settings.deploy && python manage.py migrate --settings=djangoProject4.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=djangoProject4.settings.deploy myproject.settings djangoProject4.wsgi --bind 0.0.0.0:8000"]
