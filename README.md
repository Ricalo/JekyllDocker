## Build image

```
docker build -t jekyll .
```

## Run container

```
docker run --tty --name your_container \
           --publish 4000:4000 \
           --restart unless-stopped \
           --volume $(pwd)/SampleSite:/usr/src/app \
           ricalo/jekyll
```

> **Note:** On Windows, append the following arguments:
> ```bash
> --config _config.yml,_config_dev.yml --force_polling
> ```
