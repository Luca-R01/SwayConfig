# File: ~/.zshrc

# Personalizzazione del prompt
PROMPT='%F{#8ab4f8}%n@%m %~ -> %F{reset}'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

plugins=(
  history-substring-search
)

# Configurazione Zsh-completion
autoload -U compinit
compinit

neofetch

