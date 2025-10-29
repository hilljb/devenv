# devenv
Backing up my development environment, settings, and so on. This may need updating, but this is close for now.

## Mac

### iTerm2

* Download iTerm2.
* Load the profile `JSON's Profile.json` and delete the default profile.

### ZSH

* ZSH is the shell in iTerm2. Use Oh My ZSH on top of that from here: https://ohmyz.sh/
* Copy the `.zshrc` from this repo into your home.

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
the terminal. You'll enter you username, email, and/or name in git before making a commit
or pushing. You use the token as your password and then your terminal is ready.

### Java

Install sdkman for controlling Java environments. Run the following for Java the most recent Java 17 Amazon version:
```shell
curl -s "https://get.sdkman.io" | bash
```

Source you shell rc file or open a new terminal and run:
```shell
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

Verify the installation by checking the version:
```shell
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

See what the latest version of Amazon Java is. As of late 2025, I'm using Java 17.
```shell
sdk list java | grep amzn | grep 17
```

Install Java, replacing the X as appropriate:
```shell
sdk install java 17.0.17-amzn
```

This should set that Java version as the default, but sdkman may ask. Check the version:
```shell
java -version
```

### VSCode

* Install VSCode.

### Clojure

```shell
brew install leiningen
```

Create a new Clojure app for testing, maybe in `~/tmp`:
```shell
lein new app testing-clojure
```

You should be able to run the app using `core.clj` in the VSCode terminal using `lein run`.

Now, open the VSCode extensions menu and search for Calva. Install it. Once installed, you should be
able to open your VSCode pallete and start a Calva Leiningen REPL. Use Leiningen with the Uberjar profile
and you can now use Option+Return to execute code.

### Conda / Python

Python is installed, but may not be callable in the way you want. The system Python can be called
using `python3`. After we install Conda, `python` will be symlinked to conda.

Place this somewhere appropriate and execute it:
```shell
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
```

```shell
bash Miniconda3-latest-MacOSX-arm64.sh
```

Add conda forge as the default package manager channel to avoid license issues from the default
conda package channels.
```shell
conda config --add channels conda-forge
conda config --set channel_priority strict
conda config --remove channels defaults
```

It looks like miniforge may be an option in the future for replacing miniconda with a completely
open source and license worry-free option.

In VSCode, you can open the command palette and select `Python: Select Interpreter` to use a specific
conda environment.

### Docker

* Install Docker Desktop.

### Tmux

This is needed for tmux in iterm2:
```shell
brew install reattach-to-user-namespace
```

Install tmux:
```shell
brew install tmux
```

From this repo:
```shell
cp .tmux.conf ~/.tmux.conf
```

The `.zshrc` from this repo already contains aliases and other tmux tools.
```
