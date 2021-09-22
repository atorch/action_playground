FROM python:3.8

WORKDIR /home/action_playground

COPY tests/ /home/action_playground/tests/

COPY Pipfile /home/action_playground

RUN pip install pipenv
RUN pipenv install

ENTRYPOINT pipenv run pytest tests/