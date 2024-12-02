ul# 🦄 Dotfiles 🦄
Configured with GNU Stow

## How to Use

### Manual Install
1. Clone this repo:

    ```shell
    git clone --recursive https://github.com/idkaybattl/dotfiles.git $HOME/.dotfiles
    cd $HOME/.dotfiles/
    ```
2. Install GNU Stow:

    ```shell
    # On Arch Linux
    sudo pacman -S stow
    ```
3. Install dependencies (Can be found in the README of the folder for each item)
   
4. Run stow for the things you want to install
   ```shell
   # Example
   stow nvim
   # Loads nvim config
   ```

## Additional Configuration

### Screen Sharing on Hyprland (Discord)

https://wiki.hyprland.org/Useful-Utilities/Screen-Sharing/

Please install normal xwaylandvideobridge from aur.
For discord to work with screen sharing you also need to change the Exec in the discord.desktop file to: 
```
Exec=env XDG_SESSION_TYPE=x11 /usr/bin/discord 
```
(most likely in /usr/share/applications/ unless you're using the flatpak version)


### Install Discord Overlay

https://github.com/trigg/Discover

```
# On Arch Linux
yay -S discover-overlay
```


## Credits

### Template (almost everything atm)
- Credits to [arithefirst](https://github.com/arithefirst)


### Hyprland
- Credits for all wallpapers are in ./hyprland/.wallpapers/README.md

### Tmux
- `tmux-copycat` from [tmux-plugins/tmux-copycat](https://github.com/tmux-plugins/tmux-copycat)
- `tmux-open` from [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open)
- `tmux-power` from [wfxr/tmux-power](https://github.com/wfxr/tmux-power)
- `tmux-powerline` from [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)
- `tmux-prefix-highlight` from [tmux-plugins/tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)
- `tmux-sensible` from [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
- `tmux-session-wizard` from [27medkamal/tmux-session-wizard](https://github.com/27medkamal/tmux-session-wizard)
- `tmux-yank` from [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank)
- Tmux Plugin Manager from [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)

### Yazi
- Color Scheme from [catppuccin](https://github.com/catppuccin/yazi)


## Install every dependency command (after installing gnome and yay)
   ```shell
   yay -S git hyprland hypridle hyprpaper hyprpicker hyprshot pavucontrol rofi-wayland swaync swww-git ttf-font-awesome ttf-roboto-mono thunar tumbler waybar wlogout cliphist kitty fastfetch neofetch neovim tmux yazi starship discord discover-overlay zsh eza bat pipes.sh fzf stow vencord-installer cider ttf-meslo-nerd xwaylandvideobridge-git hyprpolkitagent gparted hyprlock qemu-block-gluster qemu-block-iscsi samba qemu-user-static libvirt bridge-utils virt-manager dnsmasq openbsd-netcat dmidecode os-prober update-grub
   ```
