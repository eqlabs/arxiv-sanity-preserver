FROM python:3.8-slim

RUN apt-get update
RUN apt-get install -y imagemagick poppler-utils build-essential libffi-dev python-dev sqlite3

COPY . /home/python/app

WORKDIR /home/python/app

RUN pip install -r requirements.txt

RUN chmod +x init.sh
RUN chmod +x fetch.sh

RUN ./init.sh 

ENV MAX_INDEX=256
ENV RESULTS_PER_ITER=128

RUN ./fetch.sh

EXPOSE 80

CMD ["python", "serve.py", "--prod", "--port", "80"]

