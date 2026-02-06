export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY
setopt autocd
autoload -U compinit; compinit

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

eval "$(zoxide init zsh)"

alias e="nvim"
alias cd="z"
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only"
set -o vi

eval "$(starship init zsh)"
