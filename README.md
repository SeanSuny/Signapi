# 功能简介

## Docker部署

```shell
docker run -dit \
--name Sign \
--hostname Sign \
--network bridge \
--restart always \
-p 17840:17840 \
-e TZ=Asia/Shanghai \
seansuny/signapi:latest
```

### sign 相关调用

```text
http://ip:端口/sign
```

## 设备支持

~支持CPU架构AMD64、ARM64两种架构<br>