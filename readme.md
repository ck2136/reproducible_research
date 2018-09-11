# Reproducible Research and CI/CD Tutorial

Topics to cover:

- Make (Automated build tool)
- Git (Reproducible Research)
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
