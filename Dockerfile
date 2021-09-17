FROM python:3.8

WORKDIR /home/action_playground

ADD requirements.txt .

RUN pip install -r requirements.txt

ENTRYPOINT pytest tests/