# Wishtree backend

## Setup mysql
In `conf/evolutions` dir, there are 3 sql files.
1. Run `setup.sql` when you are root account in mysql.
2. Check mysql account to `wishtree_admin`, then run `card.sql`
3. Run `test_data.sql` to insert fake data.

## Run application

```
sbt run
```

Goto `http:\\localhost:9000\database`, then you can see `Hello world with your first data in card table`
