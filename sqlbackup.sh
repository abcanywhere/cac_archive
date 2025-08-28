mysql -uappuser -pcac_br1dge -Dcaimdb < schedule.sql
sudo mysqldump -u root --skip-extended-insert caimdb | gzip > caimdb.dump.gz
# rsync caimdb.dump.gz cachk@aws9327.ddns.net:.
rsync caimdb.dump.gz cachk@dreamtech.ddns.net:.
