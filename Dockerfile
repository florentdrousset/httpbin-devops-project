FROM python:3.9-slim

WORKDIR /usr/src/app

RUN pip install httpbin gunicorn

CMD ["gunicorn", "-b", "0.0.0.0:80", "httpbin:app"]