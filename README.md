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
### `starred` github tool

```
pip install starred

export GITHUB_TOKEN=yourtoken
starred --repository awesome-stars --sort

```
## Usage
```
starred --username fouber --sort >> README.md

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
#### ubuntu下的安装
```
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
		 libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils
```

```
$ git clone https://github.com/yyuu/pyenv.git ~/.pyenv

```

```
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
```

```
$ echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
```

#### linux下安装`pyenv-virtualenv`
```
$ git clone https://github.com/yyuu/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

$ echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
```

#### mac下的依赖安装
```
brew install readline xz
brew install pyenv
brew install pyenv-virtualenv
```

### 安装加速


先手动下载对应的版本压缩包，放到`~/.pyenv/cache/`下面.



### zen coding

## 使用nvm来安装nodejs

### 安装nvm层
```
git clone https://github.com/creationix/nvm.git
source nvm/nvm.sh
```
