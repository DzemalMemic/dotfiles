# set ZSH environment variable to the .oh-my-zsh directory in the user's home directory
export ZSH=$HOME/.oh-my-zsh

# set the theme for the zsh shell
ZSH_THEME="half-life"

# list of themes to be used in random theme selection
ZSH_THEME_RANDOM_CANDIDATES=(
  "robbyrussell"
  "agnoster"
  "half-life"
  "alanpeabody"
  "awesomepanda"
  "blinks"
  "candy"
  "clean"
  "cloud"
  "cypher"
  "fishy"
)

# list of zsh plugins to be loaded
plugins=(
  git
  extract
  web-search
  git-extras
  docker
  vagrant
  #autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
  vi-mode
  git-flow
)

# load oh-my-zsh script
source $ZSH/oh-my-zsh.sh

# load and enable autocompletion
autoload -U compinit && compinit

# run exa command when the current working directory changes
function chpwd() {
  emulate -L zsh
  exa
}

# set environment variable for distributed compilation using distcc
export CCACHE_PREFIX='distcc'
# set the library path for linker
export LDFLAGS=-L/usr/lib
# set the include path for c compiler
export CFLAGS=-I/usr/include

# load and execute fzf shell script, if it exists
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# set aliases for common commands with exa
alias ls="exa -G --sort=name"
alias li="exa -lih"
alias l="exa -lahgi"
alias lst="exa -ligah --tree"
alias ll="exa -lihg"

# set aliases for listing files with a certain size threshold
alias files1plus="ls -lah **/*(Lm+1)"
alias files2plus="ls -lah **/*(Lm+2)"
alias files5plus="ls -lah **/*(Lm+5)"
alias files10plus="ls -lah **/*(Lm+10)"
alias files20plus="ls -lah **/*(Lm+20)"

# set aliases for g++ with different c++ standards
alias gs11="g++ -std=c++11"
alias gs14="g++ -std=c++14"
alias gs17="g++ -std=c++17"
alias gs20="g++ -std=c++20"

# set aliases for common commands
alias open="xdg-open"
alias myip="curl http://ipecho.net/plain; echo"
alias app-install="sudo apt-get install"
alias app-remove="sudo apt-get remove"
alias lock="xflock4"
alias vim="lvim"
alias vi="lvim"
alias duah="du -a -h --max-depth=1 | sort -hr"
alias mysysteminfo="inxi -Fxxxz"
alias tlmgr="usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"
alias bth="exec blueman-applet"
