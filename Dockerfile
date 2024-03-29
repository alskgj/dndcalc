FROM python:3.8

COPY app /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD gunicorn --bind 0.0.0.0:5000 wsgi:app

