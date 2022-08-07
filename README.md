# Docker-Envs-PI4

Docker Envs for PI4

# ROADMAP

- Replace Heimdall for Dashy with redirect on 80
- Enable tailscale on the go

# Enhancement

- Removed Caddy for Bitwarden
- DON'T FORGET TO REMOVE TRAILING NEWLINE AT THE END OF DUCKDNS TOKEN SECRET FILE FFS
- Added SWAG for reverse proxy
- Added monolith docker-compose for networking debug purposes
- pihole: don't forget to set your local resolv.conf nameserver to 127.0.0.1 otherwise your swag infra can't resolve outise the network
- pihole: permet all origins on dns conf, take care of firewalling, multiple hops away even if in the same network
- Added photoprism
