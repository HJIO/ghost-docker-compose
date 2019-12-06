# Dockerlized Ghost blog
## File structure
```
├── data
├── docker-compose.yml
├── nginx
│   └── blog.conf
└── ssl
    ├── ghost.crt
    └── ghost.key
```
## Set up
Before starting to apply this package, please making sure your OS is docker-ready.
### 1. Download
```bash
cd ~ &&
git clone https://github.com/HJIO/ghost-docker-compose &&
```
### 2. Add your domain name
Modifying `nginx/blog.conf` and `docker-compose.yml` to match your own domain name.
### 3. Enable SSL
SSL key and certification files are required to be put into `ssl` folder, named as `ghost.crt` and `ghost.key`
### 4. Build
```bash
docker-compose up
```