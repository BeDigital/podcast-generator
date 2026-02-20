FROM python:3.12-slim

# create venv
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install --upgrade pip \
 && pip install --no-cache-dir PyYAML

COPY feed.py /usr/bin/feed.py
ENTRYPOINT [/entrypoint.sh]