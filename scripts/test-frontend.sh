#!/bin/bash
address=127.0.0.1:8080
echo 'Running frontend test'
if [ ! -z "${docker_image}" ] && [ ! -z "${docker_run_id}" ]; then
    for (( c=1; c<=5; c++ ))
    do
        echo 'Docker image exists'
    done

fi