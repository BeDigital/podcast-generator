#! /bin/bash

echo "----------------"
git config --global user.name "${INPUT_NAME}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py
git add . && git commit -m " " && git push --set-upstream origin main

echo "----------------"