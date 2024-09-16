#!/usr/bin/env bash

alias docker.run='                    docker run '
alias docker.run.name='               docker run -name '
alias docker.run.port='               docker run -p '
alias docker.run.d='                  docker run -d '
alias docker.run.a.stdin.stdout.stderr.it=' docker run -a stdin -a stdout -a stderr -it '
#example# docker run -a stdin -a stdout -a stderr -it imageName
alias docker.run.example='            echo "docker run --name containerName -v fileNameInHostWithPath:fileNameInContainerNameWithPath -p hostPort:containerPort imageName"'
alias docker.run.example1='            echo "docker run --name containerName -v pathInHost:pathInContainer -p hostPort:containerPort imageName"'
alias docker.run.example2='            echo "docker run -it --name containerName -d -v pathInHost:pathInContainer -p hostPort:containerPort imageName"'
alias docker.pause='                  docker pause '
alias docker.unpause='                docker unpause '
alias docker.stop='                   docker stop '
alias docker.start='                  docker start '
alias docker.rm='                     docker rm '
alias docker.exec.it='                docker exec -it '
#alias docker.exec.it.bash='           docker exec -it bash '
alias docker.exec.example='           echo "docker exec -it containerName binFileNameInContainer"'
#
alias docker.ps='                     docker ps '
alias docker.ps.a='                   docker ps -a '

alias docker.inspect='                docker inspect '
#guide# get the container_id with docker.ps.a
#example#docker inspect <container_id>

alias docker.volume.create='          docker volume create '
alias docker.volume.inspect='         docker volume inspect '
alias docker.volume.ls='              docker volume ls '
alias docker.volume.prune='           docker volume prune '
alias docker.volume.rm='              docker volume rm '

alias docker.pull='                   docker pull '
# docker pull swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/ubuntu:20.04
alias docker.tag='                    docker tag '
# reference : https://docker.aityp.com/image/docker.io/ubuntu:20.04
# docker tag  swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/ubuntu:20.04  docker.io/ubuntu:20.04
# sed -i 's#ubuntu:20.04#swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/ubuntu:20.04#' deployment.yaml
