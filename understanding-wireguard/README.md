# Understanding WireGuard
Code files to accompany [Understanding WireGuard](https://medium.com/@yarbrough.b/understanding-wireguard-2d8d9af987eb) Medium post.

## Setup
First, make sure WireGuard is installed on the host:
```
wg --version
```
Next, create two folders, one for each peer. These will help us keep our keys organized:
```
umask 077
mkdir peerA
mkdir peerB
```
Generate key files for each peer:
```
wg genkey | tee peerA/privatekey | wg pubkey > peerA/publickey
wg genkey | tee peerB/privatekey | wg pubkey > peerB/publickey
```
Build the image:
```
sudo docker build -t wg-peer .
```
## Run
Use two terminals.

_First terminal:_
```
sudo docker run -it --cap-add=NET_ADMIN --name=peerA wg-peer
ip address
```
_And in the second terminal:_
```
sudo docker run -it --cap-add=NET_ADMIN --name=peerB wg-peer
```
In each terminal, create and open the WireGuard configuration file:
```
vi /etc/wireguard/wg0.conf
```
Copy `peerA.conf` into the first terminal and `peerB.conf` into the second.
Replace the comments with the keys from setup.
Also, insert the Docker IP address and ListenPort of peerA as the `Endpoint` for peerB.

Save and exit each file (with `Esc,:,wq` for you Nano users...)

Once configuration files are saved, bring up the interface in each terminal:
```
wg-quick up wg0
```
At this point run wg and you should see a “latest handshake” in the peer block.
```
interface: wg0
  public key:  # public key of peerA
  private key: (hidden)
  listening port: 51820
  
peer:  # public key of peerB
  endpoint: 172.17.0.3:34138
  allowed ips: 10.37.0.0/24
  latest handshake: 38 seconds ago
  transfer: 4.29 KiB received, 6.82 KiB sent
  persistent keepalive: every 23 seconds
```

Success!

Now try pinging between containers using their WireGuard IP address.
