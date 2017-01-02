## Build image

```
docker build -t jekyll - < Dockerfile
```
or

```
Get-Content Dockerfile | docker build -t jekyll -
```

## Run container

```
docker run --tty --name your_container \
           --publish 4000:4000 \
           --restart unless-stopped \
           --volume $(pwd)/SampleSite:/usr/src/app \
           ricalo/jekyll
```
