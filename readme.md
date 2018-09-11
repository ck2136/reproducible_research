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



Pull, Add, Commit, Push
-----------------------

Now that we've started a project, we should probably discuss a little bit about the (usual) steps one takes throughout a project. So if you have a project stored on a remote repository, you


What is make?
-------------

make is a program that was originally inteded to help software developers make software. Since most software programs have interconnected "objects", the make program is used to update the main software program by updating pieces of "objects" that change throughout a software's life cycle.

In the context of statistical projects, our code is usually divided between data management/munging, analysis, and report generation. For statisticians, creating a workflow that will help in automating the 3 processes may not be useful as data sources may change, analyses methods may change, and new elements in the report may need to be added. However, there are instances where automatic report generation based on rolling data happens and even if automating the process doesn't make much sense, creating this workflow will help in focusing on one step of the project at a time.

How to use make
---------------

