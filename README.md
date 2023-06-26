# 工作环境搭建
快速搭建一个开发的工作环境


## 一、基本工具

### 终端神器`tmux`

ubuntu环境安装

```
sudo apt-get install tmux
```
mac环境安装

```shell
brew install tmux
```

#### `tmux`的配置config  

```
set -g default-terminal "screen-256color"

set -g prefix C-a
unbind C-b
bind-key C-a send-prefix

# 这个是竖直分屏
unbind % 
bind | split-window -h

# 这个是水平分屏
unbind '"'
bind - split-window -v

# copy mode
bind-key [ copy-mode
set -g mouse on
bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
bind -n WheelDownPane select-pane -t= \; send-keys -M
bind -n C-WheelUpPane select-pane -t= \; copy-mode -e \; send-keys -M
bind -T copy-mode-vi    C-WheelUpPane   send-keys -X halfpage-up
bind -T copy-mode-vi    C-WheelDownPane send-keys -X halfpage-down
bind -T copy-mode-emacs C-WheelUpPane   send-keys -X halfpage-up
bind -T copy-mode-emacs C-WheelDownPane send-keys -X halfpage-down

unbind r
bind r source-file ~/.tmux.conf

# 窗口设置
bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

bind -r m resize-pane -Z


# tpm plugin
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'jimeh/tmux-themepack'
set -g @plugin 'tmux-plugins/tmux-resurrect' # persist tmux sessions after computer restart

set -g @plugin 'tmux-plugins/tmux-continuum' # automatically saves sessions for you every 15 minutes

set -g @themepack 'powerline/default/cyan'

set -g @resurrect-capture-pane-contents 'on'

set -g @continuum-restore 'on'

# Initialize TMUX plugin manger
run '~/.tmux/plugins/tpm/tpm'

```

### `oh my zsh`与主题
比较好用的shell，比较慢，但是和bash兼容，功能也强大。
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

or

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

```


### `wget`的安装


```
sudo apt-get install curl wget
brew install curl wget
```

### `git-flow`安装

```
apt-get install git-flow
```

### `starred` github tool
一个查看github的工具
```
pip install starred

export GITHUB_TOKEN=yourtoken
starred --repository awesome-stars --sort
```
Usage

```
starred --username fouber --sort >> README.md

```

## 二、网络工具
### 网络瑞士军刀`nc`
netcat工具
```
sudo apt-get install netcat
```

mac

```
brew install netcat
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
