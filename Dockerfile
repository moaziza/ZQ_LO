FROM lMl10l/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/moaziza/Repthon_userbot.git/tree/master.git /root/jepthon
#working directory 
WORKDIR /root/jepthon

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","jepthon"]