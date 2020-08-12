#/bin/bash
docker run --rm -v data:/home/python/app/data -v thumbs:/home/python/app/static/thumbs -e MAX_INDEX=10000 -e RESULTS_PER_ITER=1000 eqlabs/crypto-sanity-preserver:latest /bin/bash ./fetch.sh
docker restart sanity
