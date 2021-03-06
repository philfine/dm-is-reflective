#!/bin/sh

# postgres
psql postgres -c 'CREATE USER dm_is_reflective'
psql postgres -c  "ALTER USER dm_is_reflective WITH PASSWORD 'godfat'"
createdb 'dm_is_reflective'
psql postgres -c  'ALTER DATABASE dm_is_reflective OWNER TO dm_is_reflective'

# mysql
mysql -u root -p -e 'GRANT USAGE ON dm_is_reflective.* TO dm_is_reflective@localhost IDENTIFIED BY "godfat"'
mysql -u root -p -e 'CREATE DATABASE dm_is_reflective'
mysql -u root -p -e 'GRANT ALL PRIVILEGES ON dm_is_reflective.* TO "dm_is_reflective"'
