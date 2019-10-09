# Azure_Docker_Volume_Backup


```
docker --tlsverify --tlscacert=ca.pem --tlscert=cert.pem --tlskey=key.pem -H=wss.rloader.cloud:2376 run --rm -v mongoBackup:/volume -v /home/StatEWeG/data:/data volume-backup backu p /volume /data/mm.gz
```
