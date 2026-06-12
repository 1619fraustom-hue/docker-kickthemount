FROM ubuntu:latest

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip nmap git && \
    apt autoremove -y

RUN git clone https://github.com/k4m4/kickthemout.git

WORKDIR /kickthemout

RUN pip3 install --break-system-packages -r requirements.txt

CMD ["python3", "kickthemout.py"]
