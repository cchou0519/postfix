# postfix

## Send Only
```
docker run -d --name my-postfix -p 25:25 \
  -e MYHOSTNAME=your.dns.com  -e MYNETWORKS="0.0.0.0/0" \
  cchou0519/postfix-without-auth
```

## Incoming mail

```
docker run -d --name my-postfix -p 25:25 -p 143:143 \
  -e MYHOSTNAME=your.dns.com  -e MYNETWORKS="0.0.0.0/0" -e MYDESTINATION="your.dns.com, localhost.localdomain, localhost"\
  cchou0519/postfix-with-incoming
```


