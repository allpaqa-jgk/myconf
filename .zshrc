# n node version management
PATH=/usr/local/bin/git:$PATH
export PATH

export N_PREFIX="$HOME/.n"
export PATH="$PATH:$N_PREFIX/bin"

# prezto zsh
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "${ZDOTDIR:-$HOME}/.zplug/repos/sorin-ionescu/prezto/modules/command-not-found/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zplug/repos/sorin-ionescu/prezto/modules/command-not-found/init.zsh"
fi

autoload -U promptinit
promptinit
prompt pure

# tmux
export PATH="$PATH:$HOME/.tmuximum"
# if [ -z $TMUX ]; then
#   tmuximum
# fi

# vscode
function code() {
  if [[ $# = 0 ]]; then
    open -a "Visual Studio Code"
  else
    local argPath="$1"
    [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
    open -a "Visual Studio Code" "$argPath"
  fi
}

# python
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  export PATH=${PYENV_ROOT}/bin:$PATH
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# postgreSQL
export PATH=/usr/local/Cellar/postgresql/12.4/bin:$PATH

# mysql
export PATH=/usr/local/opt/mysql-client/bin:$PATH

# ヒストリー機能
# command r でコマンド履歴を辿るのでいっぱいにしとく
HISTFILE=~/.zsh_history     # ヒストリファイルを指定
HISTSIZE=10000              # ヒストリに保存するコマンド数
SAVEHIST=10000              # ヒストリファイルに保存するコマンド数
setopt hist_ignore_all_dups # 重複するコマンド行は古い方を削除
setopt hist_ignore_dups     # 直前と同じコマンドラインはヒストリに追加しない
setopt share_history        # コマンド履歴ファイルを共有する
setopt append_history       # 履歴を追加 (毎回 .zsh_history を作るのではなく)
setopt inc_append_history   # 履歴をインクリメンタルに追加
setopt hist_no_store        # historyコマンドは履歴に登録しない
setopt hist_reduce_blanks   # 余分な空白は詰めて記録
zstyle ':completion:*:default' menu select

# alias
alias ll="ls -al "
alias t="tmuximum "
alias dc="docker-compose "
alias dcr="dc run --rm "
alias dcb="dc build"
alias dce="dc exec"
alias dcu="dc up"
alias wdc="watch docker-compose"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/t-hamaguchi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/t-hamaguchi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/t-hamaguchi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/t-hamaguchi/google-cloud-sdk/completion.zsh.inc'; fi
