config_root=$(pwd)

home_configs="tmux.conf vimrc bashrc Xresources"
config_configs="i3 nvim polybar rofi mpv"

function get_unsused_name {
    file="$@"
    [[ ! -e "$file" ]] && echo $file && return 0

    num=2
    while [[ -e "$file$num" ]] ; do num=$((num + 1)) ; done
    
    echo "$file$num"
}

function confirm {
    echo -n "Are you want to continue? (y/n) "
    read choice

    case $choice in
        y) ;;
        n) exit 0;;
        *) echo Invalid choice; exit 1;;
    esac
}

if [[ "$@" == "--help" ]]; then
    printf "Usages:\n\t%s --remove-backups\n\t%s --install\n" "$0" "$0"
elif [[ "$@" == "--remove-backups" ]]; then
    echo This script will remove all your backups
    confirm
    for conf in $home_configs; do
        rm -v "$HOME/.$conf.bac"*
    done
    for conf in $config_configs; do
        rm -v "$HOME/.config/$conf.bac"*
    done
    echo Done!
    exit 0
elif [[ "$@" == "--install" ]]; then
    echo This script will backup existing config and create symlinks to content of this repo.
    
    confirm

    for conf in $home_configs; do
        backup_file=$(get_unsused_name "$HOME/.$conf.bac")
        mv -v "$HOME/.$conf" "$backup_file"
        ln -sv "$config_root/$conf" "$HOME/.$conf"
    done

    for conf in $config_configs; do
        backup_file=$(get_unsused_name $HOME/.config/$conf.bac)
        mv -v "$HOME/.config/$conf" "$backup_file"
        ln -sv "$config_root/config/$conf" "$HOME/.config/$conf"
    done

    echo Done!
else
    printf "Invalid usage\nTry \`%s --help\` for more information\n" $0
fi
