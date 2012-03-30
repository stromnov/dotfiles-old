# Terminal locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_TYPE=""

# Preferred editor
export EDITOR="vim"

# Shell history control
export HISTCONTROL="ignoreboth"

# Personal settings
export NAME="Andrew Stromnov"
export EMAIL="${NAME} <stromnov@gmail.com>"

# Detect platform
export PLATFORM="$( uname | tr A-Z a-z )"

# Platform specific settings
case ${PLATFORM} in
    darwin )
        # Enable pbcopy/pbpaste Unicode support (http://www.macosxhints.com/article.php?story=20081231012753422)
        export __CF_USER_TEXT_ENCODING="0x1F5:0x8000100:0x8000100"

        # Prefer 32 bit python
        export VERSIONER_PYTHON_PREFER_32_BIT=yes

        # MacPorts settings
        export MPROOT=/opt/local
        if [ -d ${MPROOT} ]; then
            export PATH=${MPROOT}/bin:${MPROOT}/sbin:$PATH
            export MANPATH=${MPROOT}/share/man:$MANPATH

            # Special CCACHE settings for MacPorts
            if [ -d ${MPROOT}/libexec/ccache ]; then
                export PATH="${MPROOT}/libexec/ccache:${PATH}"
            fi

            # PostgreSQL 9.0 settings
            if [ -d ${MPROOT}/lib/postgresql90/bin ]; then
                export PATH="${MPROOT}/lib/postgresql90/bin:${PATH}"
            fi

            # Oracle client
            if [ -d ${MPROOT}/lib/oracle ]; then
                export ORACLE_HOME=${MPROOT}/lib/oracle
                export TNS_ADMIN=${ORACLE_HOME}/network/admin
                export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${ORACLE_HOME}
                export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:${ORACLE_HOME}
            fi
        fi

        ;;
esac

# Add /usr/local/bin
echo ${PATH} | grep -q -s "/usr/local/bin"
if [ $? -eq 1 ] ; then
    if [ -d "/usr/local/bin" ] ; then
        export PATH="${PATH}:/usr/local/bin"
    fi
fi

if [ -d ${HOME}/node_modules/.bin ]; then
    export PATH="${PATH}:${HOME}/node_modules/.bin"
fi

# Local bin
if [ -d ${HOME}/bin ]; then
    export PATH="${HOME}/bin:${PATH}"
fi

# Local opt paths
if [ -d ${HOME}/opt ]; then
    export PATH="${HOME}/opt/bin:${PATH}"
    export LD_LIBRARY_PATH="${HOME}/opt/libexec:${HOME}/opt/lib:${LD_LIBRARY_PATH}"
    export DYLD_LIBRARY_PATH="${HOME}/opt/libexec:${HOME}/opt/lib:${DYLD_LIBRARY_PATH}"
    export LD_RUNPATH="${HOME}/opt/libexec:${HOME}/opt/lib:${LD_RUNPATH}"
    export PYTHONPATH="${HOME}/opt/lib/python2.7/site-packages:${PYTHONPATH}"
fi


# Python completion and others
if [ -f ~/.pythonstartup ] ; then
    export PYTHONSTARTUP=~/.pythonstartup
fi

# Use colorized command prompt
if [ ${BASH_VERSION} ]; then
    export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
elif [ ${ZSH_VERSION} ]; then
    echo "No command prompt hiliting for now."
fi

# Use color ls (aka ls -G)
export CLICOLOR=1
eval `gdircolors ${HOME}/.dotfiles/dircolors`

# less colorizing
export LESS=" -R "

# grep colorizing
export GREP_OPTIONS="--color=auto"
export GREP_COLOR='1;32'

# TODO
export LESSOPEN='| /opt/local/bin/lesspipe.sh %s'

# Aliases
alias ls="ls -FG"
alias ..="cd .."
alias ...="cd ../.."
alias pyclean="find . -type f -name '*.py[co]' -delete"
alias swpclean="find . -type f -name '*.swp' -delete"

if [ ${BASH_VERSION} ]; then
    if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi
fi

#. <(npm completion)

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
