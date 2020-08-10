#/bin/bash
docker run --rm -v data:/home/python/app/data eqlabs/crypto-sanity-preserver env MAX_INDEX=250 env RESULTS_PER_PAGE=50 /bin/sh ./fetch.sh
docker restart sanity
