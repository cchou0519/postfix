#!/bin/bash

if [ ! -z "$MYHOSTNAME" ]; then
    postconf -e "myhostname=$MYHOSTNAME"
fi

if [ ! -z "$MYNETWORKS" ]; then
    postconf -e "mynetworks=$MYNETWORKS"
fi

service postfix restart

sleep infinity

