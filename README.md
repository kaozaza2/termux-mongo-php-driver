# termux-mongo-php-driver
A mongo driver for php on termux (only for aarch64)

# Before Install
install below package:
```shell
pkg install php curl
```
# Install
```shell
curl -L https://git.io/JtWEE | bash
```

# Need mongodb server on termux?
```shell
pkg install curl
curl -LO https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
pkg update
pkg install mongodb
```