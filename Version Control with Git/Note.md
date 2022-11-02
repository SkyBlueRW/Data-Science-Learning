# Version Control with Git

[toc]

Material: Coursera Course: https://www.coursera.org/learn/version-control-with-git/home


## Introduction
Git is a distributed version control system, which allows for agile and team work on continuous development.


**Key Concepts**
- Commit:  is a snapshot of the project
- Branch: Independent line of the development of the project. A series of commits
- Pull request: Request to merge your branch into another branch

**Locations**
1. Project directory
    a. Working tree: a single commit's directories and files on your computer
    b. Staging area/index: files that are planned for the next commit (/.git)
    c. local repository: contains all the commits of the project (version history) (/.git)
2. remote repository

**Basic Syntax**
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



**Reference**
- git show can be used for details of an object (tag, reference)
- HEAD is a reference that points to the current commit    
- ~ and ^ to refer previous commits (I.E: HEAD~)

**Branches**
- Show current branches
    ```git
    git branch
    ```
- Create branch 
```git
git branch
git checkout <branch_or_commit>
```
        - checkout updates the HEAD and the working trees
        - git branch -b to combine the two
- Delete branch
     ```git
    git branch -d branchname
    ```
## Merge


**Four types of merges**: Fast-forward merge, Merge commit, Squash merge, Rebase
1. Fast-forward merge: Move the base branch label to the tip of the topic branch. Only possible if no other commits have been made to the base branch since branching.
    ```git
    git checkout master
    git merge feature2
    ```
2. Merge Commit: Combines the commits at the tips of the merged branches and place the result in the merge commit
    ```git
    git checkout master
    git merge --no-ff featureX    
    # accept or modify the merge message
    git branch -d featureX
    ```   
3. Rebase (changes history): moves commits to a new parent
4. Rewriting History
    
    
    
**Merge Conflicts** can only occur if the same file is changed

How to resolve (when attempting a merge, files with conflicts are modified by git and placed in the working tree within the <<<< and >>>> markers)
1. Checkout master
2. Merge featureX
    a. CONFLICT - both modified fileA.txt
3. Fix fileA.txt (Human)
4. Stage fileA
5. Commit the merge commit
6. Delete the featureX branch label

**Communicate with Remote**
-  Tracking branches(remote)
    ```git
    git branch --all
    
    git remote set-head <remote><branch>
    ```
- clone: copy a remote repository
- fetch: retrieves new objects and references from the remote repository
    ```git
    git fetch <repository>
    ```
- pull: fetches and merges commits locally
    ```git
    git pull [<repository>] [<branch>]
    ```
- push: adds new objects and references to the remote repository
    ```git
    git push [--set-upstream] [<repository>] [<branch>]
```

## Pull Request
Goal: merge a branch into the project