# 🌙 Neovim Configuration
This configuration is made specially for Linux / WSL.
As for Windows users, please, refer to [Neovim installation guide](https://github.com/neovim/neovim/blob/master/INSTALL.md)

## 📂 Prerequesites
- `git`
- `ripgrep`
- `gcc` or `clang`
- `build-essential`

## 📦 Installation
Before installing this configuration, make sure you backup an existing one.
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

Now that you created a backup, clear the cache of your old configuration.
```bash
rm -rf ~/.cache/nvim/
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

Awesome! You're now ready to install this Neovim configuration on your machine.
You can do that by simply running the following command in your terminal.
```bash
git clone https://github.com/nikita-simankov/neovim ~/.config/nvim --depth 1
```

## License
[MIT](./LICENSE.md)
