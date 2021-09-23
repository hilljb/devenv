# devenv
Backing up my development environment, settings, and so on.

## Mac

### Misc

* Plugging in the ThinkPad keyboard results in the command (alt) and option (windows)
keys being reversed. Once plugged in, open keyboard preferences and in the keyboard tab
click "Modifier Keys..." at the bottom. Map "Option" to "Command" and "Command" to
"Option."

### iTerm2

* Download iTerm2.
* Load the profile `JSON's Profile.json`

### ZSH

* ZSH is the shell in iTerm2. Use Oh My ZSH on top of that from here: https://ohmyz.sh/

### Brew

* Visit `http://brew.sh` and follow the instructions.

### Vim

* Once Brew is installed, `brew install vim`
* Place the `.vim/` directory from this repo in your home.
* Place the `.vimrc` from this repo in your home.

### Atom

* Visit `http://atom.io` and download/install. (Unzip and move to the applications folder.)
* In the welcome screen, uncheck `Show Welcome Guide...`

### GitHub

Works as of 2021-09-03. You need to authorize your terminal for GitHub.

* Sign in using the browser and go to "Settings" under the drop-down menu.
* On the left, go all the way down to "Developer Settings."
* Now go to "Personal Access Tokens."

Once you create a token, you can use that as your password when authenticating in
the terminal. You may have a few extra hoops to jump through, but this should
end up giving your terminal access.

### Java

Use the Corretto Java JDK from Amazon. It's easy to install. I'm currently using version 8. `java -version` checks the version number.

### Clojure

* Visit `http://leiningen.org` and install, or use `brew install leiningen`

### Conda / Python

* Visit `https://docs.conda.io/en/latest/miniconda.html#macosx-installers` and install

### Docker

Follow the instructions here: https://docs.docker.com/desktop/mac/install/

### AWS

### Emacs

### Tmux


