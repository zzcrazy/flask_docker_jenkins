FROM python:3.6.9-alpine

RUN pip install --no-cache-dir -i http://mirrors.aliyun.com/pypi/simple/ \
--trusted-host mirrors.aliyun.com Flask gunicorn

ADD . /app

ENV GUNICORN_CMD_ARGS="--bind=0.0.0.0:5001 --chdir=./app/ --workers=4"

CMD ["gunicorn", "app:app"]
