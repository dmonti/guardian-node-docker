# guardian-node-docker

Dockerized HYCHAIN guardian-cli from https://github.com/HYCHAIN/guardian-node-software

From project folder:

## 1. Build your image locally
> docker build -t hychain/guardian-node:latest .

## 2. Edit docker-compose.yml
Replace `<YOUR_GUARDIAN_PRIVATE_KEY>` with your actual private key

## 3. Deploy your container:
> docker-compose up -d --remove-orphans
