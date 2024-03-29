---
title: "Here's why you should learn Git"
description: "A few reasons on why you should make use of the most popular VCS, even if you're not a software developer."
date: "2022-03-12"
---

![Git logo](https://git-scm.com/images/logos/downloads/Git-Logo-2Color.png)

## Introduction

Over the course of my journey in Linux I discovered lots of interesting
tools for production or for everyday tasks. But none of them compared to
what **Git** gave me, and I\'d even go as far as saying that it
completely changed my perspective of working on a PC.

**Warning**
This is not a guide on how to use Git, there are tons of good guides out
there, this article is about my point of view on Git.

## Example

Let\'s say you\'re working on a software project, or even a project
which isn\'t necessarily code based such as a writing or a mechanical or
electrical drawing. You start your project, edit it, refine it and
you\'re done! And you didn\'t even need Git for this! Now let\'s say
something doesn\'t look right with it: you copy your base file, probably
save it as `final_version`, edit it, and you\'re happy with it. Now
let\'s iterate this last step 5 times until you get to the
`trust_me_most_final_version`. Great! Now you have your project folder
cluttered of final versions, but how does someone else know which is the
right one? Let\'s take this a step further, you remove something from
your final version and you save it, then you realize that part wasn\'t
so bad, how are you gonna recover it? Are you going to manage your
projects like this or have a tool which deals with this headache for
you?

If you wish to keep working like this, you probably won\'t go far away
without losing versions or data. That\'s why VCSs (Version Control
Systems) exist, they\'re there to save hours of headaches trying to look
for that particular change you probably even deleted. There are lots of
VCSs out there like Mercurial, CVS, SVN and others, but the most popular
and well known is **Git**.

## What does Git solve

Git basically takes care of versioning your project for you, without
even noticing. Actually, you have to tell him when to store a new
version of the file, but you surely won\'t have tons of final versions
in your project directory. I will now list some problems it solves:

### Saving every version of the file

Well, that\'s basically what Git is intended for.

### Showing a log of the versions

Git can show you a log of all the versions and who uploaded it.

### Showing the difference between two versions

Git can show you what you added and deleted to a file

### Manage multiple files

Imagine applying the example before with two different files, I won\'t
even imagine the mess it would create.

### Working with other people

You\'ll probably have to deal with working with other people once in a
while, Git makes it easy to do it, by working around what is called a
centralized repository. As an example:

1.  John edits the projects
2.  John uploads the changes on the central repository (or `origin`)
3.  Joe pulls the latest changes from `origin`
4.  Joe edits the project
5.  Joe uploads the changes on `origin`

This method ensures two things:

-   The central repository is always up to date
-   If the central repository stops working both John and Joe still have
    the full history of the project without the need of an online
    connection

This is just an example of the simplest workflow you can use. There are
many of them on the internet or you can come up with your own. If you
are working on a relatively big project I usually suggest using the
[git-flow](https://nvie.com/posts/a-successful-git-branching-model)
method by Vincent Driessen.

### Branching

Now we\'re going into the rabbit hole of this tool. Let\'s say you have
a base version of your project, but you want two different versions of
it: one with a picture of a dog in it and one with a picture of a car.
Well branching comes to the rescue! Just create two branches and create
a new desired version on each branch.

Branching is a huge topic in Git and requires an entire book just for
what you can do with branches and how to manage them.

### Merging

What if your branches diverge too much? Merge them!

**Warning**
Merging works best with plain text files, see why in
[Binary vs plain text files](#binary-text)

## Why you need Git

If you do anything on a computer you need to learn how to use Git, I\'d
even go as far as saying that is should be a basic skill everyone needs
to know. It takes few hours to learn the basics and no more than few
days to get used to it, but the outcome is astonishing: no more
versioned files in the project directory, no more fear of losing data
and collaborating is way easier.

The preferred way of learning Git is through the command line. If
you\'re not familiar with it, Git also comes with a handy user interface
with all the basic buttons you need. And if you don\'t like the one that
comes by default, don\'t worry, there are tons of them out there!

If you wish to take a ride into the Git world, there is a cool game
called [Oh my Git](https://ohmygit.org). It covers all the basics in a
funny and entertaining way.

## Binary vs plain text files {#binary-text}

One thing to say, Git works best with plain text files, and that\'s the
reason why I tried to move away from binary files as much as I could.
You can\'t merge binary files without breaking something, although not
every file can be used as a plain text file. Don\'t get me wrong, Git
**does work** with binary files and I still recommend to do it, as a
fact you can stage them, commit them and checkout new and old revisions,
you just can\'t get every cool feature that it offers. I could keep
talking about why you should move to plain text files when writing
anything on a computer but I\'ll keep this for another day.

### Files which are plain text include:

-   `txt` files
-   Most programming languages source code
-   Markdown files
-   Org-mode files (the one I\'m writing on right now)
-   Literally any other file which when opened with notepad and doesn\'t
    produce gibberish.

### Files which are **not** plain text include:

-   PDFs
-   Every Microsoft Office document type
-   Most closed source programming languages
-   Mechanical drawings
-   Images
-   Videos
-   Specific programs files

## Conclusions

To summarize:

-   Git offers an opportunity to get rid of all your headaches when
    working on a computer.
-   You need to learn Git if you want to easily collaborate and share
    files.
-   It\'s easy to learn and there is a game called [Oh my
    git](https://ohmygit.org) which covers all the basics.
-   Binary files won\'t give you as much flexibility as plain text
    files.
