#!/bin/bash
set -e

mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
CREATE DATABASE IF NOT EXISTS docker_compose_rails_example_development;
CREATE DATABASE IF NOT EXISTS docker_compose_rails_example_test;
EOSQL
