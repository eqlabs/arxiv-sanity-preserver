#/bin/bash
docker run --rm -v data:/home/python/app/data -v static:/home/python/app/static -e MAX_INDEX=500 -e RESULTS_PER_PAGE=250 eqlabs/crypto-sanity-preserver /bin/sh ./fetch.sh
docker restart sanity
