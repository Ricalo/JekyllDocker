FROM ruby:2.3.1
WORKDIR /usr/src/app
ENV LANG C.UTF-8

COPY run.sh /usr/local/bin/

ENTRYPOINT ["run.sh"]
CMD ["--config", "_config.yml,_config_dev.yml"]
