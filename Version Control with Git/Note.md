# Version Control with Git

[toc]

Material: Coursera Course: https://www.coursera.org/learn/version-control-with-git/home


## Introduction
Git is a distributed version control system, which allows for agile and team work on continuous development.


**Key Concepts**
- Commit:  is a snapshot of the project
- Branch: Independent line of the development of the project. A series of commits
- Pull request: Request to merge your branch into another branch

**Syntax**
- General
    ```git
    git [command] [--flags] [arguments]
    git help [command]   
    ```
- Setting config
    ```git
    git config --global user.name "X"
    git config --global user.email "x@xample.com"
    ```
            - system flag applies to all repositories for all users on the computer
            - global flag applies to all repositories that you use on computer
            - local flag applies to current repository (highest precedence)

- Create New Repo (local)
    ```git
    git init
    ```
- View status of files in the working tree and staging area
    ```git
    git status
    ```
- Add new/modified file to staging area
    ```git
    git add filename
    git add .   # for adding all files
    ```
- Add to the local repository
    ```git
    git commit -m 'initial commit'
    ```
- Review history
    ```git
    git log --oneline
    ```
- Create Remote Repo
    ```git
    git init --bare repoa.git
    ```
        - often a bare repository
- Display info about remote repo
    ```git
    git remote --v
    ```
- Add remote repository
    ```git
    git remote add <name>  <url>
    git remote add origin https://github...
    ```
- Push local repo to remote repo
```git
git push [-u] [<repository>] [<branch>]
```
        - <repository> can be a name or URL
        - u track this branch (--set-upstream)

**Locations**
1. Project directory
    a. Working tree: a single commit's directories and files on your computer
    b. Staging area/index: files that are planned for the next commit (/.git)
    c. local repository: contains all the commits of the project (version history) (/.git)
2. remote repository
