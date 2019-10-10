# Azure_Docker_Volume_Backup

## Goal
This Docker image serves three different pruposes:
- Backingup Docker Volumes
- Restoring a Backup to a Docker Volume
- Creating a file on your machine and link it to Azure Storage


## Backup a Docker Volume
```
docker run --rm -v <named_volume>:/volume -v <host_directory_to_save_backup>:/data volume-backup backup /volume /data/<name_of_backup_file>
```
For example
```
docker run --rm -v mybackupvolume:/volume -v /home/ubuntu/mybackups:/data volume-backup backup /volume /data/mybackupfile.gz
```

## Restore a Backup to a Docker Volume

```
docker run --rm -v <restore_backup_on_this_volume>:/volume -v <path_of_backup_file>:/data/backup.gz volume-backup restore /data/backup.gz /volume

```
For example : 
```
docker run --rm -v my_restored_volume:/volume -v /home/ubuntu/mybackups/friday-backup.gz:/data/backup.gz volume-backup restore /data/backup.gz /volume

```

## Creating a file on your machine and link it to Azure Storage
Not available yet
