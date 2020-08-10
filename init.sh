#!/bin/bash
mkdir data
touch ./data/db.p
touch ./data/d2.p
touch secret_key.txt
sqlite3 ./data/as.db < schema.sql
