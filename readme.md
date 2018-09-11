# Reproducible Research and CI/CD Tutorial

Reproducible Research
---------------------

- What: Doing research in a way that is efficient and transparent. 
- Why: Check news on issues related to research not being reproducible. 
- How: Follow protocols that boost efficiency and transparency.
	- Mostly using tools created by software developers

Topics to cover:

- Git (Reproducible Research)
- Make (Automated build tool)
- Jenkins (Continuous Integration/Development/Deployment)


What is git?
------------

Git is a version control tool. Most of us have exposure to a simpler version control tool known as Dropbox, OneDrive, and/or Google Drive. Git is basically a sup-ed up version control tool that isn't easy to understand as a newbie. This document is here to help everyone get a good grasp of what is git and why we use it :)

The purpose of using git
------------------------

Since I'd like to keep the document short, I'll list only the most important aspects of git:

- Git is a decentralized/distributed version control tool.
- Git makes us think about the version control process.
- Git is an automated version control system.
- Projects can be safely changed from previous versions to the current working copy.

There are plenty more reasons to choose to use git as a version control system but I won't list all of that here. We'll go through use cases and make sure that at least see those that are listed above are good enough reason to continue to use git.

Installing git!
---------------

- Windows:
    - go to [link](https://git-scm.com/download/win). This should start an automatic download... If not hit the 32-bit or 64-bit Git for windows.
    - The installer provides a terminal application called 'Git Bash', which is an emulator for a Unix-based system such as Linux and MacOS X. The Git Bash environment will make it so that commands written will give us same results as if it was done in a Unix environment.

- Linux
    - type "sudo apt-get install git" if you don't have git already
    - If you aren't sure type "which git" and you should see a output that shows where the git binary is located in your system.

- MacOSX
    - go to [link](https://git-scm.com/download/mac). This should start an automatic download.

*We are going to exclusively be using the command-line environment for the rest of the exercise* The reason is because it is how git was first intended to be used and it'll make you look cooler (at least for a brief period of time).

Command line tutorial
---------------------

People call the command-line interpreter the *shell*. It's called the shell because the interpreter is protecting itself from inexperienced users like ourselves from doing something stupid/crazy. Essentially there are bits and bytes that move around the computer based on the command that we enter and a random command that is issued could potentially lead to breaking to system so the idea is to always be mindful of what we're typing in :) 

- Windows:
    - Open up Git Bash!

- MacOS X:
    - Look for the "Terminal" application in the launchpad or through the spotlight icon (Command + Space)

- Linux:
    - Ctrl + Alt + T will open up the terminal


When you open up the terminal you'll see something like this:

![example prompt](./static/fig1.png)

```
root@machine:~$
```

The prompt will be different for everyone but essentially this is where everyone can start typing in commands so that the shell program takes your command. The default shell that most of us will be using is 'bash' (**b**orn **a**gain **sh**ell).

Configuring Git
---------------

The first order of business is to configure your local machines git setting. If we are going to use a remote git service (e.g. github, gitlab, bitbucket and etc) we're going to need to have our username and e-mail stored in our local git program. THe command is as such:

```
git config --global user.name "CK"
git config --global user.email "chong.kim@ucdenver.edu"
```

The above script tells our git program in the local machine to set "CK" and "chong.kim@ucdenver.edu" as the default user and e-mail for all our projects. One could set a different username and e-mail for different projects. (`man git` for more info)

Before using git
----------------

Before git, we probably have a folder and some files within a folder that we have code, documents, results, and whatnot stored in. You could start a local git repository in the folder but we're going to start from a fresh setup. Let's make sure we know where we are in the shell:

```
pwd
/c/Users/ck
```

Now that we know where we are create a new folder and change directory (cd) into the new directory:

```
mkdir proj1
cd proj1
```

The way we initialize a new local repository is the type `git init` inside the new folder:

```
git init
Initialized empty Git repository in /home/ck1/Documents/proj1/.git/
```

Great! We took the first step to starting a new project with version control :)
Now let's create a readme file about the project that we're going to work on. Usually before a project begins I like to create a file that describes what I'm going to be doing. Like an abstract of a research article if you will.

![](./fig2.png)

Once we have a simple README.md file saved in the folder now we cna add it to our local and remote repository.

Init, Pull, Add, Commit, Push
-----------------------

Now that we've started a project and have a file that is subject to version control, we should probably discuss a little bit about the (usual) steps one takes throughout a project. Once we have a folder with a file that we want to keep track of, we initialize (`git init`) the folder, we add (`git add filename`) the file to the local repository, we commit (`git commit -m "message"`) our changes, and then we push (`git push origin master`). The `git push origin master` code is basically indicating that we want to finalize the changes that we've commited :) origin is the default name of the remote repository. `master` is branch that we're making changes to. If we had branches that were stemming from the master branch, we could have `git push origin <branch name>`. If we don't want to push the changes, we can revert (e.g. `git revert commit-id` where `commit-id` would be something like `9ca304ed12b991f8251496b4ea452857b34353e7` based on looking at the `git log`) 

There are many more commands that we could touch on but these are the basics of the workflow that is most useful for the workflow.

Now that we have a readme file let's try adding the file to the git repository and putting into a remote repository. We should probably set up a github account first so that we actually have a remote repository. Go to [github.com](www.github.com) and create an account.

Once you are signed in you will see a green "New repository" button. Hit it!

![](./static/fig3.png)

Once done insert whatever repository name you would like it to be. Add a description if you like and keep it public :) Also don't check the "Initialize this repository with a README" box because we just made one :)

The github folks are kind enough to give us instruction and you could always use the instructions to setting up a connection from local repository to remote repository. Now that we need to link the local repository with the remote repository. Now we can add, commit, add remote repository, push changes made in repository to remote repository

```
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:username/projectname.git
git push origin master
```

Boom! we have made our first push to a remote git repository. The output should indicate the status of the changes that were made.

From here on out if changes were made to a file and we want to check what kind of changes were made in the repository we can issue:


```
git status
```

and we can see 
- On what branch changes were made
- What type of commits were made and to be made
- Any files that have been added to the commit or if there are "untracked" files
- Suggestion to use `git add` to add the files to the git commits


```
git add file1 file2 file3
git commit -m "commit message"
```

to make changes onto your repository:) 

So to add a bit of explanation of what has just happened, git requires that files be "added" or "staged" so that each versions of the file can be recorded. Once recorded into git's system, changes made can be "tracked". If files are "untracked", git doesn't care about them and won't be version controlled. Staging is important because git starts a local draft of the next commit with reference to ALLL files and directories contained in the repository (it isn't referencing just files that have changed). The idea is that git is taking a snapshot of the state of the project at the given moment which helps users going forward or reverting back to whatever version of the projec they are working on. 

When a commit is made a unique id will be outputted as such:

```
[master (root-commit) 600df9f] Initial commit
```

As mentioned before, the unique id `600df9f` can be used to revert to previous version of project state. 

Second Commit
--

OK now that we've made a first commit, let's make a second commit by changing up the README.md document. Make a few changes and lets get back to the terminal and see what has happned. We're also going to create a folder named "code" and add a file named data_manage.R

```
mkdir code
touch ./code/data_manage.R
git status
```

you will notice that now that we have git telling us what changes that were made. It suggests that we could either use `git add filename` to include new changes that were made to the README.md file or to use `git checkout` to discard the changes made to the README.md file. Also on the bottom it indicates that the code/ folder is untracked so it suggests adding that to our git staging area.

```
git add README.md code/data_manage.R
git status
```

The status now indicats that we've added the files to the master branch in the origin repository. Now we can commit the changes:

```
git commit -m "Add data management code"
```

You can also check the commit history now

```
git log
```

Removing file
--

Now that we've added files and made some changes to the gir repository, we should practice removing files. In the shell prompt, the command `rm file` will usually just remove the file. Similarly, `git rm file` will remove a file but we also need to commit that removal into the git system. Let's try an example.

```
touch temp.txt
git add temp.txt
git commit -m "add temp file"
git status
```

we see that temp is added to the repository. Now let's remove the file.

```
git rm temp.txt
git status
```

we can see that at the master branch the temp.txt file has been deleted.you can type `ls` to list files in the directory and see that it doesn't exist in the directory either. Now we need to commit the deletion.

```
git commit -m "deleted temp file"
git status
git log
```
The log will show the history of what has happened so far. If one wantedto one could return to either of the commit stages by performing the `it revert <commitid>`.

If you've mistakedn removed a file through another means, you could still run the `git rm temp.txt` because the file is still in git's staging area (i.e. database) and make sure to commit the change.

Renaming files
--

So renaming files in Unix-environment is pretty easy. Just type `mv oldfile newfile` and there you have it. But this creates a problem for git because it recognizes that `oldfile` is removed and `newfile` is untracked in the folder. If you used `git mv oldfile newfile` then changes don't need to be added.Then we just need to commit the name change. Try it yourself

```
git mv README.md READ.md
git commit
git status
git log 
```

Name change has occured! Let's revert back to before commiting this time.

```
git revert HEAD
```

This command will open up a editor (at least in linux) to indicate to what commit we are rolling back to.

git add --all
--

If we are absolutely in a rush and there are too many things going on in the repository. We should probably wait until we have time to make changes to the repository. However, for those that are inpatient, there is a nuclear option. `git add all` will add all files that are both tracked and untracked into the staging area. Then everything is one commit away from being stored into the local repository. THe nuclear option is almost never advised because one should really be thinking about each individual components and what changes that were made specifically so that when one comes back to the project, it's easier to remember where things were for each specific files. A summary of what happened should suffice for each file.

What is make?
-------------

make is a program that was originally inteded to help software developers make software. Since most software programs have interconnected "objects", the make program is used to update the main software program by updating pieces of "objects" that change throughout a software's life cycle.

In the context of statistical projects, our code is usually divided between data management/munging, analysis, and report generation. For statisticians, creating a workflow that will help in automating the 3 processes may not be useful as data sources may change, analyses methods may change, and new elements in the report may need to be added. However, there are instances where automatic report generation based on rolling data happens and even if automating the process doesn't make much sense, creating this workflow will help in focusing on one step of the project at a time.

How to use make
---------------

