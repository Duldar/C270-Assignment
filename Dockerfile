FROM alpine3.5

RUN apk add --update py2-pip


COPY requirements.txt /usr/src/containerize-python-server/
RUN pip install --no-cache-dir -r /user/src/containerize-python-server/requirements.txt


COPY simple_server.py /usr/arc/containerize-python-server/
COPY template/index.html /usr/src/containerize-python-server/template/

EXPOSE 5000
WORKDIR ${SCR_DIR}

ENV PYTHONUNBUFFERED=1

CMD ["python", "usr/src/containerize-python-server/siple_server.py"]