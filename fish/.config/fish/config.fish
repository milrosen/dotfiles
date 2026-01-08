source /usr/share/cachyos-fish-config/cachyos-config.fish
fish_vi_key_bindings
bind --mode insert --sets-mode default jh repaint

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    fortune | cowsay -f stegosaurus
end
