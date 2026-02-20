FROM python:3.12-slim

# create venv
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# install deps into venv (allowed)
RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir PyYAML

COPY feed.py /usr/bin/feed.py
ENTRYPOINT ["python", "/usr/bin/feed.py"]
