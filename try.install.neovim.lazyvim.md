- reference https://www.lazyvim.org/installation

Make a backup of your current Neovim files:
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone the starter

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

Remove the .git folder, so you can add it to your own repo later
```bash
rm -rf ~/.config/nvim/.git
```
Start Neovim!
nvim

# For issue: Fresh install, module 'lazy' not found
```bash
cd ~/.local/share/nvim/lazy/lazy.nvim/
git.checkout.f
#or
git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable $HOME/.local/share/nvim/lazy/lazy.nvim

```