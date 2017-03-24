# RoR Docker Template

## How to use it:
This uses the latest postgres and the ruby:2.31 images. Pull these down if need be:  
```
$ docker pull postgres
$ docker pull ruby:2.3.1
```  

Clone or unzip the repo into a folder with name of the new app.

Build the initial rails app on your host using the docker ruby image:  
```
$ docker run --rm -it -v $PWD:/appname ruby:2.3.1 bash
```
you might need to add user argument on linux: `-u $(id -u):$(id -g)`.  Replace `appname`.

And then the usual commands inside the container.
- `# cd /appname`
- `# gem install rails`
- `# rails new . --skip-bundle --skip-test --skip-spring --skip-turbolinks -d postgresql`
