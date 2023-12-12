#!/bin/bash

#simple char server with netcat

PORT=1234

#listen on specified port
#k flag- continue listening after disconnection
nc -lkv $PORT
