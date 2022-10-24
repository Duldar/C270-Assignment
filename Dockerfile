FROM python:3.8

ENV SCR_DIR /usr/bin/src/webapp/src

COPY src/* ${SRC_DIR}/

WORKDIR ${SCR_DIR}

ENV PYTHONUNBUFFERED=1

CMD ["python", "siple_server.py"]