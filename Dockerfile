# docker build -t jekyll- < Dockerfile
# docker run -it --publish 4000:4000 --name your_container -v $(pwd):/usr/src/app jekyll
FROM ruby:2.3.1
WORKDIR /usr/src/app
ENV LANG C.UTF-8
# For Windows
# CMD set -x && bundle install && jekyll serve --config _config.yml,_config_dev.yml --force_polling
# Linux
CMD set -x && bundle install && jekyll serve --config _config.yml,_config_dev.yml
