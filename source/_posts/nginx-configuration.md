---
title: Nginx 基本配置
date: 2018-04-23 13:33:03
tags:
---

Nginx 作为 nodejs 的反向代理是很好的选择。我们通常在本地测试很多个应用程序

<!-- more -->

# Nginx 基本配置 #

### 安装 ###

mac OS:

```
$ brew install nginx
```

Ubuntu:
```
$ apt-get install nginx
```

### 配置目录 ###

```
/etc/nginx/sites-available
```

添加文件 `hanggi.me` 并添加内容：

```
server {
    listen 80;

    server_name hanggi.me www.hanggi.me;


    #index index.html index.htm;

    location ~ .*\.(css|js|gif|jpg|jpeg|png|bmp|ico|svg|html)$
    {
        root /root/koa2-build/public;
        #expires 30d;
        access_log off;
    }

    location / {
        proxy_pass http://127.0.0.1:1234;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```


## 添加 git webhook ##

首先要在 github 等网站上，设置相应代码库的webhook地址。

创建文件 webhook.hanggi.me, 内容类似，更换下监听webhook的程序端口。

```
server {
    listen 80;

    server_name webhook.hanggi.me;

    location / {
        proxy_pass http://127.0.0.1:5678;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```

写一个webhook监听程序 `webhook.js` ，监听几个特定事件。

```js
let http = require('http');
let createHandler = require('github-webhook-handler');
let handler = createHandler({path: '/gitpush', secret: 'fangda'});

function run_cmd(cmd, args, callback) {
    let spawn = require('child_process').spawn;
    let child = spawn(cmd, args);
    var resp = "ok!\n";

    child.stdout.on('data', function(buffer) {resp += buffer.toString();})
    child.stdout.on('end', function() {callback(resp)})
}

let port = 5678;
console.log('Listening on port ' + port);
http.createServer(function(req, res) {
    handler(req, res, function (err) {
        res.statusCode = 404;
        res.end('no such location');
    })
}).listen(port);

handler.on('error', function (err) {
    console.error('Error: ', err.message);
});

handler.on('push', function (event) {
    console.log('Received a push event for %s to %s', event.payload.repository.name, event.payload.ref);
    run_cmd('sh', ['./webhook.sh'], function (txt) {
        console.log(txt);
    })
});
```

让 webhook 监听程序后台执行，在接收到push事件时调用事先写好的脚本。`webhook.sh`

```sh
#!/bin/bash

WEB_PATH='/home/hanggi/proj' # 你的项目地址

echo "Start deployment!"
cd $WEB_PATH
echo "Pulling source code..."

git clean -f
git pull

echo "npm install ..."
npm i

cd adm
git pull

echo "Done git pull."

pm2 ls
```


最后重启 nginx

```
service nginx restart
```