source /usr/share/cachyos-fish-config/cachyos-config.fish
fish_vi_key_bindings
bind --mode insert --sets-mode default jk repaint

function fish_greeting
    fortune | cowsay -f stegosaurus
end

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/miltonr/.local/share/coursier/bin"
# <<< coursier install directory <<<
eval "$(mise activate fish)"
