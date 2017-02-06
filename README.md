# 工作环境搭建
快速搭建一个开发的工作环境


## 一、基本工具

### 终端神器`tmux`

```
sudo apt-get install tmux
brew install tmux
```
#### `tmux`的配置config  
```
# bind R source-file ~/.tmux.conf ; display-message "Config reloaded.."
unbind C-b
set -g prefix C-x
# if you want to use copy; shoul use this
set -g mode-keys vi
➜
```

### `oh my zsh`
比较好用的shell，比较慢，但是和bash兼容，功能也强大。
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

or

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

```


### `git`的安装和配置


```
sudo apt-get install curl wget
brew install curl wget
```
### `starred` github tool
一个查看github的工具
```
pip install starred

export GITHUB_TOKEN=yourtoken
starred --repository awesome-stars --sort

```
### Usage
```
starred --username fouber --sort >> README.md

```

## 二、网络工具
### 网络瑞士军刀`nc`
netcat工具
```
sudo apt-get install netcat
```

### wireshark

### tcpdump



## 三、开发环境和工具

### python虚拟环境`pyenv`
与之类似的还有virtualenv这样的工具。

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

#### mac下的安装
```
brew install readline xz
brew install pyenv
brew install pyenv-virtualenv
```

#### pyenv的安装加速
由于在国内使用pyenv安装特别慢

先手动下载对应的版本压缩包，放到`~/.pyenv/cache/`下面.



#### zen coding

### 使用nvm来安装nodejs

#### 安装nvm层
```
git clone https://github.com/creationix/nvm.git
source nvm/nvm.sh
```
