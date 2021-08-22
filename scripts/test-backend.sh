#!/bin/bash
address=127.0.0.1:9000
echo 'Running frontend test..'
for (( c=1; c<=10; c++ ))
do
    echo 'Attempting to connect..'

    if [ ! -z "$(curl --silent ${address} | grep '<title>Simple Fortune Cookie</title>')" ]; then
        echo 'Response ok'
        exit 0
    fi

    sleep 3
done

echo 'Failed to get response'
exit 1