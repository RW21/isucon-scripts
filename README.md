# isucon-scripts

## nginx

`nginx.conf`

```
log_format json escape=json '{"time":"$time_local",' '"host":"$remote_addr",' '"forwardedfor":"$http_x_forwarded_for",' '"req":"$request",' '"status":"$status",' '"method":"$request_method",' '"uri":"$request_uri",' '"body_
bytes":$body_bytes_sent,' '"referer":"$http_referer",' '"ua":"$http_user_agent",' '"request_time":$request_time,' '"cache":"$upstream_http_x_cache",' '"runtime":"$upstream_http_x_runtime",' '"response_time":"$upstream_response_time
",' '"vhost":"$host"}';
access_log /var/log/nginx/access.log json;
```

## mysql

`mysqld.cnf`

```
[mysqld]
slow_query_log = 1
slow_query_log_file = /var/log/mysql/mysql-slow.log
long_query_time = 0
```
