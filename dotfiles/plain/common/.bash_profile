#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Added by Toolbox App
export PATH="$PATH:/home/tim/.local/share/JetBrains/Toolbox/scripts"

# opam configuration
test -r /home/tim/.opam/opam-init/init.sh && . /home/tim/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
