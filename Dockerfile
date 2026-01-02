FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
# Adding pytz and nest-asyncio to help with loop issues
RUN pip3 install --no-cache-dir -r requirements.txt pytz nest-asyncio

COPY . .

# We use "python3 -m bot" instead of start.sh if start.sh just runs the module
# Or ensure your start.sh is called via bash
CMD ["bash", "start.sh"]
