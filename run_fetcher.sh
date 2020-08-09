#/bin/bash
docker run --rm -v txt:/home/python/app/txt -v pdf:/home/python/app/pdf -v data:/home/python/app/data -v thumb:/home/python/app/thumb -v static:/home/python/app/static -e MAX_INDEX=500 -e RESULTS_PER_PAGE=250 eqlabs/crypto-sanity-preserver /bin/sh ./fetch.sh

