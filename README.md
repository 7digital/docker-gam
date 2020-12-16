[![Docker Build Status](https://img.shields.io/docker/build/contentdev/gam.svg)](https://hub.docker.com/r/contentdev/gam/builds/) ![Docker Stars](https://img.shields.io/docker/stars/contentdev/gam.svg) [![Docker Pulls](https://img.shields.io/docker/pulls/contentdev/gam.svg)](https://hub.docker.com/r/contentdev/gam/)

# Docker - Google Apps Manager (GAM)

[GAM](https://github.com/jay0lee/GAM) is a command line tool for Google Apps administrators to manage domain and user settings


* Visit the [Wiki pages](https://github.com/jay0lee/GAM/wiki) for instructions and examples

---

## Docker

### Supported tags and Dockerfile

- `latest` [(Dockerfile)](https://github.com/contentdev/docker-gam/blob/master/Dockerfile)


### Pull  

Get the latest version:
```
docker pull contentdev/gam:latest
```

### Build  

Clone the repository:
```
git clone git@github.com:7digital/docker-gam.git
cd docker-gam
```

Build the current Dockerfile  and tag the image:   
```
docker build -t gam .
```

### Run

Make sure you have the required credential files in your current directory:
- `oauth2.txt`
- `oauth2service.json`
- `client_secrets.json`

*You need to generate these first, see installation.*
```
docker run -it --rm \
       -v "${PWD}"/oauth2.txt:/opt/gam/src/oauth2.txt \
       -v "${PWD}"/oauth2service.json:/opt/gam/src/oauth2service.json \
       -v "${PWD}"/client_secrets.json:/opt/gam/src/client_secrets.json
```

---

## Installation

No installation is required beyond running the Docker commands and generating your credential files.
See the [detailed instruction page](https://github.com/jay0lee/GAM/wiki/CreatingClientSecretsFile) on how to create them. 

## License

Released under the [MIT license](https://github.com/contentdev/docker-gam/blob/master/LICENSE.md).
