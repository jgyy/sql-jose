# sql-jose
You'll learn how to read and write complex queries to a database using one of the most in demand skills - PostgreSQL. These skills are also applicable to any other major SQL database, such as MySQL, Microsoft SQL Server, Amazon Redshift, Oracle, and much more.

## postgres install on mac only
I am current using macbook as i do not wish to use pgadmin as gui. Used homebrew just to install postgresql

```bash
brew install postgresql
# To use psql
psql < script.sql
```

## postgres restore database from tar file
Backup of the database will be used and the steps to restore is stated below

```bash
pg_restore -c -U jgyy -d jgyy -v data.tar
```
