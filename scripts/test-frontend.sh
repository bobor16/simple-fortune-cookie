#!/bin/bash
if [ ! -z "${docker_image}" ] && [ ! -z "${docker_run_id}" ]; then
    for (( c=1; c<=5; c++ ))
    do
        echo 'Test script is running..'
    done

fi