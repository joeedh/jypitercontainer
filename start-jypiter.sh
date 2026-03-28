#!/usr/bin/env bash

# note: this is also set in vscode's .bashrc 
export JUPYTER_CONFIG_DIR=`pwd`/.jupyter

echo "Using jupyter config dir $JUPYTER_CONFIG_DIR"

echo "Stopping server at 8888 if one is running"
# stop any running servers
jupyter server stop 8888

# ensure user settings folders exists, set in config
mkdir -p /workspaces/jypitercontainer/.jupyter/server/user-settings
mkdir -p /workspaces/jypitercontainer/.jupyter/lab/user-settings

# ensure the notebook folder exists
mkdir -p /workspaces/jypitercontainer/notebook

# start the sserver
jupyter lab --ServerApp.token='0' --ip=0.0.0.0 --no-browser --notebook-dir='/workspaces/jypitercontainer/notebook' --port=8888 
