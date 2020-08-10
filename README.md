# Crypto Sanity Preserver
https://sanity.equilibrium.co

Also available at:

https://crypto-sanity.com

## Modifications
This is a dockerized version of Karpathy's original, fit to fetch cryptography, blockchain, distributed systems, and networking papers from Arxiv.

### Build the image(s)
```bash
docker-compose build sanity
```

### Running the platform
```bash
./create_volumes.sh
docker-compose up -d
```

### Fetching new papers
To get new papers on a day-to-day basis on the platform, one needs to create a scheduled run of the fetcher. To run the fetcher, we have the following command:
```bash
./run_fetcher.sh
```
Run it manually or with a crontab.

