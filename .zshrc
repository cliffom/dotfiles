export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
OMP_HOME="$HOME/.cache/oh-my-posh"
OMP_THEME="emodipt-extend"

plugins=(git)

source $ZSH/oh-my-zsh.sh

## user config

export PATH=$PATH:/opt/nvim-linux-x86_64/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/snap/bin

if whence -p batcat >/dev/null; then
    alias bat=batcat
fi
alias cat=bat
alias ll="lsd -la"
alias vim=nvim
alias history="history | fzf"

## oh-my-posh
eval "$(oh-my-posh init zsh --config $OMP_HOME/themes/$OMP_THEME.omp.json)"

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
