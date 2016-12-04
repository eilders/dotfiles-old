# Borrowed from Paul Irish - https://github.com/paulirish/dotfiles

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extracan be used for settings you don't want to commit

for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# init z - https://github.com/rupa/z
. ~/code/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Add tab completion to SSH hostnames base on ~/.ssh/config. ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh


