sudo su

docker build -t ubuntu-dhcp -f Dockerfile .
docker build -t ubuntu-dns -f Dockerfile.dns .
docker build -t ubuntu-firewall -f Dockerfile.firewall .
docker build -t ubuntu-cliente -f Dockerfile.cliente .

docker run -d --network minha_rede ubuntu-dhcp
docker run -d --network minha_rede ubuntu-dns
docker run -d --network minha_rede ubuntu-firewall
docker run -d --network minha_rede ubuntu-cliente tail -f /dev/null