## Build image

```
docker build -t jekyll .
```

## Run container

```
docker run --tty --name your_container \
           --publish 4000:4000 \
           --publish 35729:35729 \
           --restart unless-stopped \
           --volume $(pwd)/SampleSite:/usr/src/app \
           ricalo/jekyll
```

> **Note:** On Windows, append the following arguments:
> ```bash
> liveserve --config _config.yml,_config_dev.yml --force_polling
> ```
