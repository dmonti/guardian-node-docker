# guardian-node-docker

Dockerized HYCHAIN guardian-cli from https://github.com/HYCHAIN/guardian-node-software

From project folder:

## Build local image:
> docker build -t hychain:latest .

## Edit and deploy docker-compose.yml
Replace <YOUR_GUARDIAN_PRIVATE_KEY> with your actual private key
> docker-compose up -d --remove-orphans