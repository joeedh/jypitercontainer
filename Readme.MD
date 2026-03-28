I suggest forking this repo.  Jupiter is setup to save user files to
the `notebook` folder inside the repository (which the dev container will create), you can commit these files to git.  Note: always check for missing files with `git status`

To login to github in the dev container run `gh auth login`


# Starting

To start devcontainer:

## In VSCode

Run command "clone repository in volume" (this is important to prevent slow IO accessing windows NTFS).  Press `ctrl-p` to bring up the command search menu:

![alt text](images/image.png)

Click on github:
![alt text](images/image-1.png)

![alt text](images/image-2.png)

Click on the 'master' branch


The dev container will automatically start a jypiter lab server.  If it doesn't
you can start one by running ```./start-jypiter.sh```

Open [http://localhost:8888](http://localhost:8888)
