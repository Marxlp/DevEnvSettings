## zsh Configuration

1. install zsh

2. install Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Add Oh-My-Zsh configuration in `.zshrc`

3. switch shell

sudo chsh -s /usr/bin/zsh`

4. Install fonts used by powerline9k

 Some fonts that support utf-8 character are perferable to be used,
 like [Ubuntu Mono Nerd Font Complete.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf)

- On Windows 10, just download the font and intall it for all users
- On Linux,
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "xxx.ttf" "url://to/the/font/path"
```

- list the package path of `powerline`
```bash
pip show powerline-status
```
5. configure `.zshrc`

In `.zshrc`, add below lines in 
```bash
ZSH_THEME="powerlevel9k/powerlevel9k"
export ZSH="/home/marxlp/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
```
