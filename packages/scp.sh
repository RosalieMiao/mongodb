#!/bin/bash
NODES="n3.disalg.cn
n4.disalg.cn
n5.disalg.cn
n6.disalg.cn"
TARBALLS="libssl1.1_1.1.0g-2ubuntu4_amd64.deb
mongodb-org-mongos_4.2.6_amd64.deb
mongodb-org-server_4.2.6_amd64.deb
"
for NODE in $NODES
do
	for TARBALL in $TARBALLS
	do
		scp $TARBALL root@$NODE:/tmp/jepsen/
	done
	echo ""
done
