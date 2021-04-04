FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/kurnia44/catpack.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
