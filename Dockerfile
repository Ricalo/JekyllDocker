# docker build -t jekyll- < Dockerfile
# docker run --name your_container --publish 4000:4000 --restart unless-stopped --volume $(pwd):/usr/src/app jekyll
FROM ruby:2.3.1
WORKDIR /usr/src/app
ENV LANG C.UTF-8
RUN gem install jekyll
# For Windows
# CMD set -x && bundle install && jekyll serve --config _config.yml,_config_dev.yml --force_polling
# Linux
CMD set -x && bundle install && jekyll serve --config _config.yml,_config_dev.yml

