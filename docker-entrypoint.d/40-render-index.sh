#!/bin/sh
set -eu

if [ -f /usr/share/nginx/html/index.template.html ]; then
  key="${GOOGLE_MAPS_API_KEY:-}"
  if [ -n "$key" ]; then
    sed "s/__GOOGLE_MAPS_API_KEY__/${key}/g" /usr/share/nginx/html/index.template.html > /usr/share/nginx/html/index.html
  else
    cp /usr/share/nginx/html/index.template.html /usr/share/nginx/html/index.html
  fi
fi
