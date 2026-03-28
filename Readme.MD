To start devcontainer:

## In VSCode

Run command "clone repository in named volume" (this is important to prevent slow IO accessing windows NTFS).

## Command line

Ensure you have nodejs and npm installed, for debian linux this is
```
sudo apt install npm nodejs -y
```

Install devcontainer cli, e.g.

```
sudo npm install --global @devcontainers/cli
```

## Starting the container

```
devcontainer up
```

The dev container will automatically start a jypiter lab server.