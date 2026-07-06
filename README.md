# Technical Journal Helper Utilities

So I've been using a git repository as a way to document a lot of the things I learn technically when I sit down to study or make something by myself. I am doing this because I wanted something a little bit easier to manage than obsidian, but I still wanted the a way to take notes. Right now I just have one utility which makes a daily journal entry in the right folder and/or opens it to have you start writing with the ghostwriter application all just by calling the script. Right now I am keeping the script in the user programs directory and calling it via an alias like so. 

```
#Script lives in 
~/.local/bin/daily_file_maker.sh

#created alias for script in .bashrc file
alias daily="~/.local/bin/daily_file_maker.sh"
```

Right now I just have the one utlitiy but I think I may add another one soon for making Topic entries to make that easier. Maybe a TUI or something that will let you make a new one or select an existing topic with a selection menu? 

## How to use

Right now since there's only one utiltiy if you want to use it just clone it on to your computer and modify the path to where you want your daily entries to go. Also make sure you have ghostwriter installed and you are on a linux system with standard gnu core utilities. 

In the future I may make an install script that moves the scripts to ~/.local/bin/daily_file_maker.sh and then creates aliases in your bashrc to call them. 

## Utilities List

# daily

 ```
~/.local/bin/daily_file_maker.sh
alias daily="~/.local/bin/daily_file_maker.sh"
```

Creates a daily journal entry and opens ghostwriter for you to start writing. Can be called from anywhere and will reopen the existing entry for today if there is already an entry for today. 

