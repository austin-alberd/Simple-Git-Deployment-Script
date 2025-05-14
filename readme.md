# Simple Git Automated Deployment Script
![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white) <br>
A simple bash script that pulls a remote repository from github, cleans up the repository folder, and moves files into the working directory of a web server application like apache, NGINX, etc.

This service is made for web servers. However, it can be modified to do other things as well.

## Syntax
```
bash main.sh [remote-repository-address] [target-directory] [service-to-restart]
```
* remote-repository-address: The address of the remote repository to pull from. i.e. https://github.com/user/repo
* target-directory: Where to move the files from the remote repo.
* service-to-restart: What service to restart once the files have been moved. i.e. apache2, nginx, etc
  
## How to use
1) Setup CLI Git.
   * Follow your setup instructions depending on how your repo is set up
2) Run the command either using something like a cron job or other task scheduler. You can also just run this script manually.
