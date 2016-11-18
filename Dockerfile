FROM python:2-onbuild

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
  nodejs \
  npm \
  && rm -rf /var/lib/apt/lists/*

RUN npm install

RUN python manage.py migrate
RUN python manage.py initial_photos
            
RUN nodejs node_modules/webpack/bin/webpack.js -d

CMD ["python", "./manage.py", "runserver", "0.0.0.0:8080"]
