# Installation

You need to install **docker**, **nvidia-docker**, **docker-compose**, and **nvidia-docker-compose**.

Before running nvidia-docker-compose, you should run nvidia-docker at least for one time to let it create an nvidia docker volume. For example:

```
  nvidia-docker run --rm nvidia/cuda nvidia-smi
```

If you must use sudo to run docker, and that PATH does not contain binaries that you need to run docker, define this alias
```
  alias sudo='sudo env PATH=$PATH'
```
# DockerScripts
This repository contains several bash scripts that I use to run and control dockers
- **rl_start.sh** and **tf_start.sh**: start a docker image with port mapping, password, and directory mount
- **R_start.sh** and **R_studio_start.sh**: start an R jupyter docker image, and R_studio docker image
- **execBashDocker.sh**: open bash shell on a running docker process
- **cleanDocker.sh**: clean temporary docker files
- **tensorboard_start.sh**: list all folders that seems to be a tensorflow output folder, and let user choose which to run tensorboard on
