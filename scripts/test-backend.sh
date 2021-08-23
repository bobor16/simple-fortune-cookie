#!/bin/bash
address=35.190.207.162:9000
echo 'Running backend test..'
for i in {1..10}
do
    echo 'Attempting to connect..'

    if [ ! -z "$(curl ${address}/fortunes)" ]; then
        echo 'Response ok'
        exit 0
    fi

    sleep 2
done

echo 'Failed to get response'
exit 1