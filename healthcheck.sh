
#!/bin/sh

if [ -z "$(ps |grep [d]nsmasq)" ]; then
  echo "No 'dnsmasq' process found!"
  exit 1
fi

if [ -z "$(netstat -nltu |grep \:53)" ]; then
  echo "No process listening on port 53!"
  exit 1
fi