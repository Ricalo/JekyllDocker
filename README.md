## Build image

```
docker build -t jekyll- < Dockerfile
```

## Run container

docker run --tty --name your_container --publish 4000:4000 --restart unless-stopped --volume $(pwd):/usr/src/app ricalo/jekyll
