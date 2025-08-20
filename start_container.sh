#!/bin/bash
set -e

docker push dnraju7747/simple-python

docker run -d -p 5000:5000 dnraju7747/simple-python
