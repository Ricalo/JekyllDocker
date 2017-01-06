## Run the container

docker run --publish [jekyll_port]:[jekyll_port] \
           --volume [jekyll_folder]:/usr/src/app \
           [image]


For example, the following command shows a simple way to run the container:

```bash
docker run --publish 4000:4000 --volume $(pwd):/usr/src/app ricalo/jekyll
```

| Setting | Value             |
|---------|-------------------|
| Port    | 4000              |
| Path    | Working directory |
| Command | `jekyll serve`    |

You can also specify additional options, such as your own jekyll command.

```bash
docker run --tty \
           --name your_container \
           --publish 4000:4000 \
           --publish 35729:35729 \
           --restart unless-stopped \
           --volume $(pwd)/SampleSite:/usr/src/app \
           ricalo/jekyll \
           liveserve --config _config.yml,_config_dev.yml --force_polling
```

| Setting               | Definition                                            | Value                                                                                      |
|-----------------------|-------------------------------------------------------|--------------------------------------------------------------------------------------------|
| --tty                 | Allocate a pseudo-TTY                                 | true                                                                                       |
| --name your_container | Assign a name to the container                        | your_container                                                                             |
| --publish             | Map the container port to the host port               | 4000, 35729 (default port for livereload)                                                  |
| --volume              | Mount a path from the host to a path in the container | Sample Site folder in the working directory of the host to `/usr/src/app` in the container |
| Command               | Override the default command in the container         | `jekyll liveserve --config _config.yml,_config_dev.yml --force_polling`                    |

It's worth noting that the command overrides the default **serve** subcommand with **liveserve** to allow automatic reloading of the site when a file is edited. The port 35729 allows communication between the browser and the server to enable automatic reloading.

The command also specifies an additional configuration file **_config_dev.yml** where we can specify a develpment host and port. The SampleSite included in this repo specifies a **0.0.0.0** as the host and **4000** as the port.

Last, the **--force_polling** flag enables jekyll to watch the files using a polling mechanism. This is useful if you use Docker on a Windows host. The container won't detect changes unless his flag is enabled.