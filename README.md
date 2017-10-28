# My home directory

I like to keep my various scripts and program configuration within git so it is
easy to setup a new machine and have all my tools ready to go.
Instructions from http://www.bitflop.dk/tutorials/keeping-your-home-in-git.html

## Installation

You can't simply `git clone ...` into the home directory because the
destination already exists. Instead, follow these steps:

```bash
cd $HOME
git init
git remote add origin git@github.com:rogermoore6872/home.git
git fetch origin master
git reset --hard origin/master
git branch --set-upstream-to=origin/master master
```
