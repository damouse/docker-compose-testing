FROM ubuntu:18.04

# Python
RUN apt-get update && \
    apt-get install -y  --no-install-recommends build-essential python3.6 python3.6-dev 

# # Pip, for some reason its this complicated
# RUN apt-get update \
#     && apt-get install -y curl \
#     && curl -o /tmp/get-pip.py "https://bootstrap.pypa.io/get-pip.py" \
#     && python3.6 /tmp/get-pip.py \
#     && apt-get remove -y curl \
#     && apt autoremove -y \
#     && rm -rf /var/lib/apt/lists/*

# Pip and system deps
# RUN python3.6 -m pip install pip --upgrade && \
    # python3.6 -m pip install wheel

# ENV HOME=/app
# WORKDIR /app

# ADD ./common/requirements.txt /app/common-requirements.txt
# RUN python3.6 -m pip install -r /app/common-requirements.txt

# ADD ./snowbot/requirements.txt /app/snowbot-requirements.txt
# RUN python3.6 -m pip install -r /app/snowbot-requirements.txt

# # Pathhacking so we don't have to install common
# ENV PYTHONPATH $PYTHONPATH:/app/common/

# # Use this for PRODUCTION, since it performs the copy immediately but doesn't link outside of the container
# # COPY common /app/common
# # COPY snowbot /app/snowbot

# # ENTRYPOINT python3.6 /app/snowbot/snowbot/main.py
