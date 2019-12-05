#!/bin/bash
echo "checking certbot update..."
docker pull certbot/certbot:latest
docker pull certbot/dns-cloudflare:latest &&
echo "creating certifications..."
docker run -it --rm -v "/tmp/ssl:/etc/letsencrypt" certbot/certbot certonly -n -d $1
echo "Certifications generated!"