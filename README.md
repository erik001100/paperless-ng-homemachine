# paperless-ng-homemachine
paperless-ng docker compose setup


### Summary
This is my docker-composure setup for paperless-ng. I purchased a fanless pc from [Qotom](https://qotom.aliexpress.com/store/108231) and
added a 128GB root disk and 4 terabyte disk. I mounted the 4 terabyte disk via /etc/fstab. More information on [Mounting Partitions Using UUID and Label](https://linuxhint.com/mount_partition_uuid_label_linux/)

My original intent was to scan documents and organize the filenames and folders. This process can be cumbersome. Paperless-ng provided a compelling alternative solution. Consume the files, OCR the pdfs, and tag the documents.

This docker-compsure setup will bring up paperless-ng, redis, postgresql, gotenberg, tika, and an ftpd server.  


### Purpose
Scan documents locally and use Scan2FTP functionality with a Brother MultiFunction machine. Create a profile to scan documents and ftp them to consume directory on paperless-ng server.


### References
- [paperless-ng](https://github.com/jonaswinkler/paperless-ng)
- [ftpd server](https://github.com/stilliard/docker-pure-ftpd)


### TODO
- Add [duplicity](http://duplicity.nongnu.org/vers8/duplicity.1.html) for backups. Use a script to bring down service, backup, and reload service.
  - Hard to come up with duplicity specification for deep glacier. Need to account for the 180 day minumum, volume sizes, manifest files... Maybe a 2 backups needed, a full backup to glacier every 6 months and local backups to a NAS? Any guides shouldreference volume sizes and strategies to minimze PUT requests. Should also reference stratgies for cheap efficient restore operation.
  - [Encrypted backup with Duplicity](https://www.admin-magazine.com/Articles/Encrypted-backup-with-Duplicity)
  - [The dup-composer dry run tryyout](https://tamaskalman.com/blog/post/the-dup-composer-dry-run-tryout)
  - [Cloud Backup with Duplicity](https://www.linux-magazine.com/Online/Features/Cloud-Backup-with-Duplicity)
  - [To backup or not to backup](https://pragmatic-architect.com/sysadmin/2021/04/05/backup.html)
  - [Duplicity to S3 Glacier Guide](https://github.com/senorkrabs/duplicity-glacier-guide)
  - [Quick EC2 Backups with Duplicity](https://rich0gentoo.wordpress.com/2014/02/04/quick-ec2-backups-with-duplicity/)
 
- Drop ftpd server. Get a better document scanner with OpenSSH SFTP.
- NGINX reverse proxy? 
