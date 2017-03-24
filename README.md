# RoR Docker Template

## How to use it:
This uses the latest postgres and the ruby:2.31 images. Pull these down if need be:  
```
$ docker pull postgres
$ docker pull ruby:2.3.1
```  

Clone or unzip the repo into the name of the app you want to create.

Build the initial rails app on your host using the docker ruby image:  
```
$ docker run --rm -it -v $PWD:/usr/src ruby:2.3.1 bash
```
and then the usual commands inside the container.
- `# cd /usr/src/`
- `# gem install rails`
- `# rails new app_name --skip-bundle --skip-test --skip-spring --skip-turbolinks -d postgresql`
