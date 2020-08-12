FROM python:3.8-slim

RUN apt-get update
RUN apt-get install -y imagemagick poppler-utils build-essential libffi-dev python-dev sqlite3 gcc sed

RUN sed -i '/disable ghostscript format types/,+6d' /etc/ImageMagick-6/policy.xml

COPY . /home/python/app

WORKDIR /home/python/app

RUN pip install -r requirements.txt

RUN chmod +x init.sh
RUN chmod +x fetch.sh

RUN ./init.sh 

RUN ./fetch.sh

RUN touch secret_key.txt

EXPOSE 1337

CMD ["python", "serve.py", "--prod", "--port", "1337"]

