#!/bin/bash
address=127.0.0.1:8080
echo 'Running frontend test..'
for i in {1..10}
do
    echo 'Attempting to connect..'

    if [ ! -z "$(curl ${address})" ]; then
        echo 'Response ok'
        exit 0
    fi

    sleep 2
done

echo 'Failed to get response'
exit 1
