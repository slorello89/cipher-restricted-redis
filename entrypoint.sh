#!/usr/bin/env bash
./src/redis-server tls.conf
# ./src/redis-server --tls-port 6379 --port 0 --tls-cert-file /redis/certs/redis.crt --tls-key-file /redis/certs/redis.key --tls-ca-cert-file /redis/certs/ca.crt --protected-mode no --tls-auth-clients no --tls-ciphers AES256-SHA256