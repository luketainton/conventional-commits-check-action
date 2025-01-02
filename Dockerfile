FROM gitea/runner-images:ubuntu-latest

LABEL maintainer="Luke Tainton <luke@tainton.uk>"

ENV PYTHONUNBUFFERED=1
RUN python3 -m pip install --no-cache --upgrade pip && \
    python3 -m pip install --no-cache conventional-pre-commit==4.0.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
