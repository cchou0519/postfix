# postfix

```
docker run -d --name my-postfix -p 25:25 \
  -e MYHOSTNAME=your.dns.com  -e MYNETWORKS="0.0.0.0/0" \
  cchou0519/postfix-without-auth
```
