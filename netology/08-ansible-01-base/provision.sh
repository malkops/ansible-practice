#!/bin/bash
while [[ "$#" -gt 0 ]]
  do
    case $1 in
      -i) inventory="$2"; shift;;
      -p) playbook="$2"; shift;;
    esac
    shift
done
docker run -itd --name centos7 centos:7
docker run -itd --name fedora fedora:39
docker run -itd --name ubuntu malkops/pybuntu

ansible-playbook -i $inventory $playbook --ask-vault-password

docker kill $(docker ps -qa) && docker rm $(docker ps -qa)
