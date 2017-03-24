# RoR Docker Template

## How to use it:
This uses the latest postgres and the ruby:2.31 images. Pull these down if need be:  
```
$ docker pull postgres
$ docker pull ruby:2.3.1
```  


After cloning the repository, build the initial rails app on your host with:  
```
docker run --rm -it ruby:2.3.1 bash
```
and then the usual rake commands inside the container.
