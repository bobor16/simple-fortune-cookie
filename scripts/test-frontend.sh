#!/bin/bash
address=127.0.0.1:8080
echo 'Running frontend test'
do
    echo 'Attempting to get response'

    if [ ! -z "$(curl --silent ${address} | grep '<title>Simple Fortune Cookie</title>')" ]; then
        echo 'Response ok'
        exit 0
    fi

    sleep 3
done

echo 'Failed to get response'
exit 1