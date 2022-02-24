#!/bin/bash
docker stop playwrightfunction
docker container rm playwrightfunction
docker build -t playwrightfunction .
docker run -p 8000:80 -p 8222:2222 -d --name playwrightfunction --network="ssltest" playwrightfunction
