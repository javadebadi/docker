docker run \
    -p 8000:8000 \
    --name 02-django-api-container \
    -v D:\\github\\docker\\02-django-api\\db:/db \
    javadebadi/02-django-api