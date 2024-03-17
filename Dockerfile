FROM python:3.7.3

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh kocom.conf kocom.py /

# Install requirements for add-on
RUN python3 -m pip install pyserial
RUN python3 -m pip install paho-mqtt
RUN python3 -m pip install typing_extensions

WORKDIR /share

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
