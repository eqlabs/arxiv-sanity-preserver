#!/bin/bash
mkdir data
touch ./data/db.p
sqlite3 ./data/as.db < schema.sql
