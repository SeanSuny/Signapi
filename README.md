# 功能简介

## Docker部署

```shell
docker run -dit \
--name Sign \
--hostname Sign \
--network bridge \
--restart always \
-p 17840:17840 \
seansuny/signapi:latest
```

### 添加变量

```text
export M_API_SCAN_SIGN_URL="http://127.0.0.1:17840/sign"
export JD_SIGN_KRAPI="http://127.0.0.1:17840/signkr"
export JD_SIGN_API="http://127.0.0.1:17840/signhw"
```

## 设备支持

~支持CPU架构AMD64、ARM64两种架构<br>
