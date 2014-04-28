# == README

## Karma App

A place where goods or services are exchanged between friends or your community.

## current functionality:

- a user can visit the root path.

## pivitol tracker:

https://www.pivotaltracker.com/s/projects/1067174#

========================
========================

## commands for rails 3.2.12:

```
db:create --> creates the database for the current env
db:create:all --> creates the databases for all envs
db:drop --> drops the database for the current env
db:drop:all --> drops the databases for all envs
db:migrate --> runs migrations for the current env that have not run yet
db:migrate:up --> runs one specific migration
db:migrate:down --> rolls back one specific migration
db:migrate:status --> shows current migration status
db:migrate:rollback --> rolls back the last migration
db:forward --> advances the current schema version to the next one
db:seed --> runs the db/seed.rb file
db:schema:load --> loads the schema into the current env's database
db:schema:dump --> dumps the current env's schema (and seems to create the db as well)

db:setup --> runs db:schema:load, db:seed

db:reset --> runs db:drop db:setup
db:migrate:redo --> runs (db:migrate:down db:migrate:up) or (db:migrate:rollback db:migrate:migrate) depending on the specified migration
db:migrate:reset --> runs db:drop db:create db:migrate
```


