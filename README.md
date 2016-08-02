# my-env


## `tmux`

```
sudo apt-get install tmux
brew install tmux
```
### config  
```
# bind R source-file ~/.tmux.conf ; display-message "Config reloaded.."
unbind C-b
set -g prefix C-x
# if you want to use copy; shoul use this
set -g mode-keys vi
➜
```

## `git`


```
sudo apt-get install curl wget
brew install curl wget
```
## `starred` github tool

```
pip install starred

export GITHUB_TOKEN=yourtoken
starred --repository awesome-stars --sort

```


## `nc`
```
sudo apt-get install netcat
```

## `oh my zsh`

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

or

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

```

## `pyenv`

### install
```
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
		 libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils
```
```
brew install readline xz
```
