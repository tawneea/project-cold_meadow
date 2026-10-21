#!/bin/bash
set -e

# Start JupyterLab only if port 8890 is not in use.
if ! python -c "import socket; s=socket.socket(); r=s.connect_ex(('127.0.0.1',8890)); s.close(); exit(0 if r == 0 else 1)"; then
    nohup jupyter lab \
      --ip=0.0.0.0 \
      --port=8890 \
      --ServerApp.port_retries=0 \
      --no-browser \
      > /tmp/jupyterlab.log 2>&1 < /dev/null &
fi

exit 0
