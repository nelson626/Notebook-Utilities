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

## Utilities List - Implemented

# daily

 ```
~/.local/bin/daily_file_maker.sh
alias daily="~/.local/bin/daily_file_maker.sh"
```

Creates a daily journal entry and opens ghostwriter for you to start writing. Can be called from anywhere and will reopen the existing entry for today if there is already an entry for today. 

# pomodoro

```
~/.local/bin/pomodoro.sh
alias pomo="~/.local/bin/pomodoro.sh &"
```

I think this only works on kde??? because of the notify-send feature specifically. So if you are using a different DE be wary. Just a basic pomodoro script that will run for 15 minutes and then notify you. It will keep sending a notification pop up until you reply yes to the terminal message to shut if off. Also calls you a stud, which is pretty cool. 

## Utilities List - Unimplemented

# topic 

I was thinking a TUI would be good here that allows you to use the arrow keys to search through previous topics you have already made, and maybe can filter them based on like alphabetical order, etc... Then also if you want to make a new topic it will have an option for that as well. 

# bookmarks

One of the big gripes I have with reading pdfs in the browser is that I never remember where I stopped and sometimes I will open it and then close it and forget to write down my page number. I was thinking that maybe I create a TUI that allows you cycle through the books and then automatically opens them to the previous page you were on with firefox. This would be pretty easy just by calling 

```
 firefox 'file:///path/to/file.pdf#page=12'
``` 

What I dont know yet is how to automatically save the current bookmark without input. The storage and other such things could be managed easily via a txt file within the books directory that just adds a new line everytime a book is added.  

I think maybe just maybe a regular command line tool may be good for this too and I just make it have options instead. So maybe a big overarching command like "journal" and some sub commands like "daily". So a call might look something like 

```
journal daily --list

#or 

journal bookmarks TLCL-25.12.pdf
 
#or 

journal topic new marketing
```

I kind of like this a bit more because I can make the commands a bit more easy to interface with. We will see. 