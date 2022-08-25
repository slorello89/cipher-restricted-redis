# Redis with TLS & Restricted ciphers

The image built from here will create an instance of redis on port 6379 that will only accepted TLS connections with the `TLS_RSA_WITH_AES_256_CBC_SHA256` cipher allowed. It will not authenticate clients, cert are used are under /certs. 

## Background 

Redis does not itself ship with the TLS options baked into it's binaries, rather you must compile redis from source in order to pull in the TLS stuff, this image builds an ubuntu image with the necessaries to build Redis from source, builds redis from source, and then exposes a tls endpoint on port 6379 without client authentication. The certs in here were generated directly from the project

For more information see the TLS section of the [manual](https://redis.io/docs/manual/security/encryption/)

## To build this image

just run `docker build -t tlsdeploy .`

## To run this image

run `docker run -p 6379:6379 tlsdeploy`