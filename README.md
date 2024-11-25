# 🦄 Dotfiles 🦄
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

## Credits

Unless specified below, all work in this repository was done by me.

### Template (almost everything atm)
- Credits to https://github.com/arithefirst


### Hyprland
- Credits for all wallpapers are in hyprland/.wallpapers/README.md

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

### ZSH
- Powerline and Plugins from [Oh My ZSH](https://ohmyz.sh/)
