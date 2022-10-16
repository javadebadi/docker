FROM python:3.10-slim

WORKDIR /backend
COPY . /backend

RUN mkdir ../db

RUN pip install -r requirements.txt && \
    python manage.py makemigrations && \
    python manage.py migrate

# read: https://stackoverflow.com/questions/65301487/django-with-docker-stuck-on-watching-for-file-changes-with-statreloader
# read: https://docs.docker.com/samples/django/
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8000

# To see why we have 0.0.0.0:8000 read:
# https://stackoverflow.com/questions/49476217/docker-cant-access-django-server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]