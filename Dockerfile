FROM python:3.9-slim-bullseye

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

RUN playwright install chromium
RUN playwright install-deps

COPY . .

CMD ["bash","start.sh"]