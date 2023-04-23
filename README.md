[![CI/CD](https://github.com/mdernovoi/dnsmasq/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/mdernovoi/dnsmasq/actions/workflows/docker-image.yml)

# Dnsmasq Docker container

**[Docker Hub image](https://hub.docker.com/r/mdernovoi/dnsmasq)**

This is a simple container for the network service provider [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html). It is primarily used for **DNS** but can also provide **DHCP**, **router advertisements**, and **network** boot functionality.

## Usage

### Run dnsmasq
```Shell
docker run --rm \
       -p 1053:53/udp \
       -v ./dnsmasq.conf:/etc/dnsmasq.conf \
       mdernovoi/dnsmasq
```
- Dnsmasq port `53` is published on the host machine on port `1053`.
- The configuration file `dnsmasq.conf` is mapped into the container via a bind mount volume.

### Check if dnsmasq is working
```Shell
dig @127.0.0.1 -p 1053 mydomain.com
```
- Resolve `mydomain.com` from a DNS server at `127.0.0.1` on port `1053`.

## Improvements and Suggestions

Please suggest any improvements or express wishes in the Issues section. A pull request with a corresponding implementation or fix is not required but would be appreciated.
