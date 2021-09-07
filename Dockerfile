FROM python:3.9.0

WORKDIR /home/

RUN echo "dasfsdddaf"

RUN git clone https://github.com/jgw3352/project_4.git

WORKDIR /home/project_4/

RUN echo "SECRET_KEY=django-insecure-ozy*=y!14s*3%=7&z)dmr@e!v%3#6w&o#)z@-q_*kh(y+8_%qd" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]