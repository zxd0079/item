# Path to your oh-my-zsh installation.
export ZSH=/Users/ZXD/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump osx zsh-autosuggestions zsh-syntax-highlighting )

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

eval "$(thefuck --alias)"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export p1=123.57.61.223
export p2=123.57.11.160
export p3=123.57.66.222
export p4=123.56.159.95
export d1=123.56.155.156
export d2=123.57.154.9
export lb=123.56.103.135
export t0=182.92.7.128
export t1=123.57.60.204
export t2=123.57.24.219 
export tlb=123.56.155.118 
export db1=123.56.155.156
export db2=123.57.154.9
export tdb1=123.57.133.73
export tdb2=182.92.189.36
export p5=123.57.189.231
export p6=123.57.189.69
export p7=123.57.189.75
export p8=123.57.189.28
export p9=123.57.189.29
export p10=123.57.173.64
export p11=123.57.173.190
export debian=192.5.0.10
export t3=123.57.61.223
export t4=123.57.11.160
export p12=101.200.2.128
export p13=59.110.45.17
export p14=101.200.211.236
export p15=101.200.190.34
export p16=101.200.225.131
export p17=101.200.226.207
export p18=123.56.182.191
export p19=59.110.30.143
export p20=101.201.120.126
export p21=101.201.145.228
export p22=101.201.225.200
export p23=101.201.225.208
export p24=47.93.162.22
export p25=101.201.41.193
export p26=101.201.226.6
export p27=101.201.117.56

export gw=192.5.0.20
export dev1=192.5.0.21
export dev2=192.5.0.22
export dev3=192.5.0.23
export zero=123.57.62.205
export slb1=123.56.7.118
export slb2=123.56.8.169
export shhq=180.169.107.230
export aws=ec2-54-213-238-66.us-west-2.compute.amazonaws.com
export pem=/Users/ZXD/Downloads/aws.pem
export lb1=47.93.24.50
export lb2=47.93.23.220
export pserver=59.110.237.76
export tlb=39.106.124.125
export lb3=47.95.192.170
export lb4=39.106.203.152
export tslb1=39.107.90.129
export tslb2=39.107.242.124
export config=39.97.33.216


alias p1="ssh -p 22444 saworking@$p1"
alias sp2="ssh -p 22444 saworking@$p2"
alias sp3="ssh -p 22444 saworking@$p3"
alias sp4="ssh -p 22444 saworking@$p4"
alias sp5="ssh -p 22444 saworking@$p5"
alias sp6="ssh -p 22444 saworking@$p6"
alias sp7="ssh -p 22444 saworking@$p7"
alias sp8="ssh -p 22444 saworking@$p8"
alias sp9="ssh -p 22444 saworking@$p9"
alias sp10="ssh -p 22444 saworking@$p10"
alias sp11="ssh -p 22444 saworking@$p11"
alias st0="ssh -p 22444 saworking@$t0"
alias st1="ssh root@$t1"
alias st2="ssh root@$t2"
alias st3="ssh root@$t3"
alias st4="ssh root@$t4"
alias slb="ssh -p 22444 saworking@$lb"
alias stlb="ssh root@$tlb"
alias sdb1="ssh -p 22444 saworking@$db1"
alias sdb2="ssh -p 22444 saworking@$db2"
alias stdb1="ssh root@$tdb1"
alias stdb2="ssh root@$tdb2"
alias sdebian="ssh root@$debian"
alias sp12="ssh -p 22444 saworking@$p12"
alias sp13="ssh root@$p13"
alias sp14="ssh -p 22444 root@$p14"
alias sp15="ssh -p 22444 root@$p15"
alias sp16="ssh -p 22444 root@$p16"
alias sp17="ssh -p 22444 root@$p17"
alias sp18="ssh -p 22444 root@$p18"
alias sp19="ssh -p 22444 root@$p19"
alias sp20="ssh -p 22444 root@$p20"
alias sp21="ssh -p 22444 root@$p21"
alias sp22="ssh -p 22444 root@$p22"
alias sp23="ssh -p 22444 root@$p23"
alias sp24="ssh -p 22444 root@$p24"
alias sp25="ssh -p 22444 root@$p25"
alias sp26="ssh -p 22444 root@$p26"
alias sp27="ssh -p 22444 root@$p27"



alias sgw="ssh root@$gw"
alias sdev1="ssh root@$dev1"
alias sdev2="ssh root@$dev2"
alias sdev3="ssh root@$dev3"
alias zero="ssh -p 22444 root@$zero"
alias stlb1="ssh -p 22444 xiaodong.zhou@$slb1"
alias stlb2="ssh -p 22444 xiaodong.zhou@$slb2"
alias shhq="ssh -p 22444 root@$shhq"
alias sgis="ssh gis@gis.tingjiandan.com"
alias splb1="ssh -p 22444 xiaodong.zhou@$lb1"
alias splb2="ssh -p 22444 xiaodong.zhou@$lb2"
alias splb3="ssh -p 22444 xiaodong.zhou@$lb3"
alias splb4="ssh -p 22444 xiaodong.zhou@$lb4"
alias tslb1="ssh -p 22444 xiaodong.zhou@$tslb1"
alias tslb2="ssh -p 22444 xiaodong.zhou@$tslb2"
alias pser="ssh -p 22444 root@$pserver"

alias wiki="ssh -p 22444 root@123.56.155.118"

alias tlb="ssh -p 22444 root@$tlb"

alias config="ssh -p 22444 root@$config"

alias han="ssh -p 22444 root@39.98.107.120"

alias vim='vim -v'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"




  [[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"


  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
