FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    echo "postfix postfix/mailname string example.com" | debconf-set-selections && \
    echo "postfix postfix/main_mailer_type string 'Internet Site'" | debconf-set-selections && \
    apt-get install -y postfix && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY postfix-config.sh /postfix-config.sh

RUN chmod +x /postfix-config.sh

EXPOSE 25

CMD ["/postfix-config.sh"]
