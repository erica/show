# Show

Show/hide apps from the terminal

```
OVERVIEW: show/hide apps

    ss = Screen Sharing
    ps = Photoshop

USAGE: show <app-name>

ARGUMENTS:
  <app-name>              App name or known shortcut 

OPTIONS:
  -h, --help              Show help information.
```

This utility lets me take a quick peek at whatever is going on in a shared session to another computer and hide it away without changing my focus from the terminal. Surely, I can't be the only one frustrated with the inconsistent use of ⌘-H in certain apps. (Looking at you Photoshop and Screen Sharing!) 

I also think this is particularly nice way of combining command-line development with `osascript`. I love how the toggle function turned out.

## Installation

* Install [homebrew](https://brew.sh).
* Install [mint](https://github.com/yonaskolb/Mint) with homebrew (`brew install mint`).
* From command line: `mint install erica/show`

## Build notes

* This project includes a build phase that writes to /usr/local/bin
* Make sure your /usr/local/bin is writable: `chmod u+w /usr/local/bin`
