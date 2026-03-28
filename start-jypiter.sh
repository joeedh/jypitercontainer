#!/usr/bin/env bash

mkdir -p /workspaces/jypitercontainer/notebook
jupyter lab --ip=0.0.0.0 --notebook-dir=/workspaces/jypitercontainer/notebook --port=8888 --no-browser --NotebookApp.token='' --NotebookApp.password=''
