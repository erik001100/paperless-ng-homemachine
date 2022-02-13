# paperless-ng-homemachine
paperless-ng docker compose setup


### Summary
This is my docker-composure setup for paperless-ng. I purchased a fanless pc from [Qotom](https://qotom.aliexpress.com/store/108231) and
added a 128GB root disk and 4 terabyte disk. I mounted the 4 terabyte disk via /etc/fstab. More information on [Mounting Partitions Using UUID and Label](https://linuxhint.com/mount_partition_uuid_label_linux/)

My original intent was to scan documents and organize the filenames and folders. This process can be cumbersome. Paperless-ng provided a compelling alternative solution. Instead I could just consume the files, OCR the pdfs, and tag the documents.

This docker-compsure setup will bring up paperless-ng, redis, postgresql, gotenberg, tika, and an ftpd server.  


### Purpose
Scan documents locally and use Scan2FTP functionality with a Brother MultiFunction machine. Create a profile to scan documents and ftp them to consume directory on paperless-ng server.


### References
- [paperless-ng](https://github.com/jonaswinkler/paperless-ng)
- [ftpd server](https://github.com/stilliard/docker-pure-ftpd)


### TODO
- Add duplicity for backups. Use a script to bring down service, backup, and reload service.
- Drop ftpd server. Get a better document scanner with OpenSSH SFTP.
- NGINX reverse proxy? 
