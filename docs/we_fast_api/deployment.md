# WeFastAPI 服务部署 {docsify-ignore}

## 手动部署

以下操作在 Ubuntu 系统下进行, 首先配置环境变量.

```shell
$ sudo vim ~/.bashrc
export MONGO_DB_HOST=127.0.0.1
export MONGO_DB_PORT=27017
export MONGO_DB_NAME=test_database
$ source ~/.bashrc
```

创建自启动服务配置文件.

```shell
$ vim wefast.service
```

编辑自启动服务配置文件 `wefast.service` 的内容.

```shell
[Unit]
Description=WeFastAPI

[Service]
Type=simple
WorkingDirectory=/home/.../.../we-fast-api
ExecStart=/home/.../.../we-fast-api/env/bin/python main.py
Restart=on-failure
RestartSec=30s

[Install]
WantedBy=multi-user.target
```

*参数 `--workers` 指定的工作进程数需要同步在 **更新 BASES 设置** 页面编辑 "App workers num" 值.*

完成配置文件后, 就可以执行下列命令配置和管理服务:

- 注册服务: sudo systemctl enable /home/.../.../we-fast-api/wefast.service
- 启动服务: sudo systemctl start wefast
- 更新配置文件: sudo systemctl daemon-reload
- 重新启动服务: sudo systemctl restart wefast
- 查看服务启动状态: sudo service wefast status
- 查看服务日志: sudo journalctl -u wefast
- 清理10秒之前的日志: sudo journalctl --vacuum-time=10s
- 清理2小时之前的日志: sudo journactl --vacuum-time=2h
- 清理7天之前的日志: sudo journalctl --vacuum-time=7d

如果需要配置域名访问, 到 Nginx 配置目录下创建一个新配置.

```shell
cd /etc/nginx/conf.d
sudo touch xxxxxx.conf
sudo vim xxxxxx.conf
```

编辑以下内容以完成反向代理配置.

```shell
server {
    listen  80;
    server_name  xxxxxx.com;
    # 把 http 域名请求转成 https
    return  301  https://$host$request_uri;
}
server {
    listen  443  ssl;
    server_name  xxxxxx.com;
    access_log  /data/nginx-logs/wefast-access.log;
    error_log  /data/nginx-logs/wefast-error.log;
    # ssl  on;
    ssl_certificate  /.../.../xxxxxx.com.crt;
    ssl_certificate_key  /.../.../xxxxxx.com.key;
    client_body_buffer_size  256K;
    client_header_buffer_size  12k;
    client_max_body_size  100m;
    large_client_header_buffers  4  12k;
    location / {
        proxy_pass  http://127.0.0.1:8083;
        proxy_set_header  Host  $host;
        proxy_set_header  X-Real-IP  $remote_addr;
        proxy_set_header  X-Forwarded-For  $proxy_add_x_forwarded_for;
        proxy_set_header  X-Forwarded-Protocol  $scheme;
    }
}
```

完成域名配置后, 验证和更新 Nginx 服务:

- 验证配置是否正确: sudo nginx -t
- 更新配置并重启服务: sudo nginx -s reload