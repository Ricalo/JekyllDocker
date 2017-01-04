# docker build -t jekyll- < Dockerfile
# docker run --name your_container --publish 4000:4000 --restart unless-stopped --volume $(pwd):/usr/src/app jekyll
FROM ruby:2.3.1
WORKDIR /usr/src/app
ENV LANG C.UTF-8
RUN gem install jekyll
RUN gem install html-proofer
COPY run.sh /usr/local/bin/

ENTRYPOINT ["run.sh"]
CMD ["--config", "_config.yml,_config_dev.yml"]
