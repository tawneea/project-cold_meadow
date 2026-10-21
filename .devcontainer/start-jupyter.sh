#!/bin/bash
set -e

exec jupyter lab \
  --ip=0.0.0.0 \
  --port=8890 \
  --ServerApp.port_retries=0 \
  --no-browser
