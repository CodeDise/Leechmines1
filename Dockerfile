FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
# Adding pytz explicitly here as a safeguard
RUN pip3 install --no-cache-dir -r requirements.txt pytz

COPY . .

CMD ["bash", "start.sh"]
