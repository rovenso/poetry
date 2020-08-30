FROM python:3.8-slim-buster

RUN apt-get update \
    && apt-get install curl -y \
    && curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py > get-poetry.py \
    && python -m get-poetry --preview -y \
    && rm get-poetry.py \
    && mv "$HOME/.poetry" "/.poetry"

ENV PATH="/.poetry/bin:$PATH"
