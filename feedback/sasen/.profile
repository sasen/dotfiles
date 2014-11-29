# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## dealing with python installation
## http://gestaltrevision.be/pdfs/workshops/python_summer_school_Mac.pdf
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# need to set locale otherwise get UTF-8 error
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8