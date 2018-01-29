HUG Packer Demo
================

## Init

First execute this to obtain all ansible requirements:

```bash
make init
```

## Create or update image

To create or update an image tag, execute (i.e.: to build cli image):  
**IMPORTANT**: If the packer template have a Docker Push post-processor, execute `docker login` in order to 
login to Docker Hub before building the image. 

```bash
make cli
```
