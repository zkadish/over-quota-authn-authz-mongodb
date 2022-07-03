# OverQuota Authn Authz Mongodb Set Up

- Create droplet with ssh access on DigitalOcean

- use rsync or scp to deploy files to server

- Set up a user with limited privileges <https://www.digitalocean.com/community/questions/how-to-enable-ssh-access-for-non-root-users>
  
- Set user bash <https://www.tecmint.com/change-a-users-default-shell-in-linux/>

- make sure user has docker privileges <https://docs.docker.com/engine/install/linux-postinstall/>

- set docker permissions $ sudo chmod 666 /var/run/docker.sock

- Run docker-compose with --env-file to set the correct environment

Add to the steps taken

- Secure MongoDB with Let's Encrypt <https://zohaib.me/securing-mongodb-using-lets-encrypt/> & <https://www.cloudbooklet.com/how-to-install-nginx-and-lets-encrypt-with-docker-ubuntu-20-04/>

- Set up automatic renewal for TSL certificates with a cron job <https://zohaib.me/securing-mongodb-using-lets-encrypt/>
  
# OverQuota Authn Authz Mongodb Set Up - without Docker

- Set up a droplet on digial ocean with Ubuntu 20*

- Add an "A" record in GodDaddy DNS record for a subdomain pointing to the droplets ip address.

- install Nginx

- install Certbot <https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/>

- install MongoDB <https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04> & <https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/#uninstall-mongodb-community-edition>

- initialize MongoDB <https://michelebusta.com/the-little-things-5-initialize-a-local-mongo-db-8972d71b7715>

## Server Setup for direct install without docker

- /etc/mongod.conf

- dbPath: /var/lib/mongodb
