# How to Run Jepsen MongoDB Transaction Test

## Severs Requirement
We need at least 6 linux severs meet the following requirements
- Ubuntu 16.04 or Debian 9
- libssl 1.1 and libcurl3
- Open the 27017, 27018, 27019 port. For more shards, 27020, 27021... are required too.

libcurl3 can be installed by 
```bash
sudo apt-get install libcurl3
```
However, libssl1.1 is not offically supported by Ubuntu 16.04, so we install it manually
```bash
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
```

## Some bugs when installing MongoDB
When wgetting the deb file from  `"https://repo.mongodb.org/apt/debian/dists/stretch/mongodb-org/4.2/main/binary-amd64/mongodb-org-" subpackage "_" version "_amd64.deb"`,
the process may crash due to unstable network, so we should check and retry it.  