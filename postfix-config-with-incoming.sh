#!/bin/bash

if [ ! -z "$MYHOSTNAME" ]; then
    postconf -e "myhostname=$MYHOSTNAME"
fi

if [ ! -z "$MYNETWORKS" ]; then
    postconf -e "mynetworks=$MYNETWORKS"
fi

if [ ! -z "$MYDESTINATION" ]; then
    postconf -e "mydestination=$MYDESTINATION"
fi

postconf -e "home_mailbox = Maildir/"
postconf -e "inet_interfaces = all"
postconf -e "recipient_delimiter = +"

service postfix restart

service courier-authdaemon start && imapd start

sleep infinity

