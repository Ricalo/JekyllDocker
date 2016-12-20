## Build image

```
docker build - < Dockerfile
```

## Run container

docker run --name your_container --publish 4000:4000 --restart unless-stopped --volume $(pwd):/usr/src/app ricalo/jekyll
