if [ "$PS1" ]; then

    shopt -s checkwinsize
    shopt -s cmdhist

    if [ "`id -u`" -eq 0 ]; then
        PS1="\[\033[0;35m\]\W:\h>\[\033[0m\] "
    else
        PS1="\[\033[0;36m\]\W:\h>\[\033[0m\] "
    fi

    LS_OPTIONS='-h --color=auto -F'
    eval `dircolors -b /etc/colorsrc`
    alias ls='ls $LS_OPTIONS'
    alias ll='ls $LS_OPTIONS -l'
    alias la='ls $LS_OPTIONS -A'
    alias more='less'
    alias dirs='dirs -v'
    alias dc='cd'
    alias df='df -h'
    alias date='date +"%a %b %d %l:%M:%S %p %Z %Y"'
    alias startx='startx &> .xlog'
    alias cvs='cvs -q'

    settitle () { 
        if [ $TERM == "xterm" ]; then
            if [ $# -eq 0 ]; then
                echo -ne "\033]0;$_\007"; 
            else
                echo -ne "\033]0;$@\007"; 
            fi
        fi
    }

    resettitle() { 
        settitle "${PWD}"; 
    }

    cd() {
        builtin cd -P "$@"
        if [ $TERM == "xterm" ]; then
            if [ $# -eq 0 ]; then
                settitle "${HOME}"
            else 
                resettitle
            fi
        fi
        /bin/ls $LS_OPTIONS
    }

    vi () { 
        settitle "vi $@"; command vim "$@"; resettitle; 
    }

    term1() { 
        echo -n "\033[3;9;17t"; 
    }

    rename() {
        for name; do
            mv -i "$name" `echo -n ${name%/} | tr -cd '[:alnum:]_. -' | tr -s ' ' '_'`
        done
    }

    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi

    settitle $HOME
fi

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37
