FROM ubuntu:16.04

# Python
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:jonathonf/python-3.6 && \
    apt-get update && \
    apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv 

# Pip and system deps
RUN python3.6 -m pip install pip --upgrade && \
    python3.6 -m pip install wheel

ENV HOME=/app
WORKDIR /app

ADD ./common/requirements.txt /app/common-requirements.txt
RUN pip install -r /app/common-requirements.txt

ADD ./snowbot/requirements.txt /app/snowbot-requirements.txt
RUN pip install -r /app/snowbot-requirements.txt

# Pathhacking so we don't have to install common
ENV PYTHONPATH $PYTHONPATH:/app/common/

# Use this for PRODUCTION, since it performs the copy immediately but doesn't link outside of the container
# COPY common /app/common
# COPY snowbot /app/snowbot

# ENTRYPOINT python3.6 /app/snowbot/snowbot/main.py
