![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/behesse/eco-docker-autoupdate?label=latest&style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/behesse/eco-docker-autoupdate/Docker?style=flat-square)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/behesse/eco-docker-autoupdate/latest?style=flat-square)

# eco-docker-autoupdate
This docker container will download or update the EcoGameServer on startup. In addition it will also check for updates every 10 minutes and if there is any will stop the server, get the update and spin the server back up.