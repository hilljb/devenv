# devenv
Backing up my development environment, settings, and so on. The order isn't really from top to bottom due to dependencies along the way.

## Mac

### Keyboard

* Use `Karabiner-Elements` to map the ThinkPad keyboard using "simple modifications":
* Left Command -> Left Option
* Left Option -> Left Command
* Under System Settings -> Desktop and Dock -> Mission Control -> Shortcuts ... enter `Left Option`.
* Under System Settings find `Function Keys` and use as function keys.

### iTerm2

* Download iTerm2.
* Load the profile `JSON's Profile.json` and delete the default profile.

### ZSH

* ZSH is the shell in iTerm2. Use Oh My ZSH on top of that from here: https://ohmyz.sh/

### Brew

* Visit `http://brew.sh` and follow the instructions.
* You may have to add a `.zshrc` (after installing oh-my-zsh) and add `/opt/homebrew/bin` to the path.

### Vim

* Once Brew is installed, `brew install vim`
* Place the `.vim/` directory from this repo in your home.
* Place the `.vimrc` from this repo in your home.

### GitHub

Works as of 2021-09-03. You need to authorize your terminal for GitHub.

* Sign in using the browser and go to "Settings" under the drop-down menu.
* On the left, go all the way down to "Developer Settings."
* Now go to "Personal Access Tokens."

Once you create a token, you can use that as your password when authenticating in
the terminal. You may have a few extra hoops to jump through, but this should
end up giving your terminal access.

### Java

Install sdkman for controlling Java environments. Run the following for Java 17 (there will be an init step):

```shell
sdk install java 17.0.2.8.1-amzn
sdk env
```

### VSCode

* Install VSCode
* Install Calva for Clojure. This should automatically install most of everything needed for Java.

### Clojure

* Visit `http://leiningen.org` and install, or use `brew install leiningen`

### Conda / Python

* Visit `https://docs.conda.io/en/latest/miniconda.html#macosx-installers` and install

### Docker

* Install Docker Desktop.

### AWS

### Emacs

### Tmux

* `brew install reattach-to-user-namespace`


