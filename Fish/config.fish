set -g fish_greeting ""

# Aliases
function up; sudo dnf update; end
function in; sudo dnf install $argv; end
function re; sudo dnf remove $argv; end
function f; fastfetch; end
function p; poweroff; end
function r; reboot; end
function c; sudo dnf clean all; end
function m; mkdir $argv; end
function fu; flatpak update; end
function mnt
    cd /mnt/CODING/$argv
end

# PATH
fish_add_path ~/.local/bin

# Starship
set -gx STARSHIP_CONFIG ~/.config/starship-fish.toml
starship init fish | source
