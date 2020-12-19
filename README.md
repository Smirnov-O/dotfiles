<h1 align="center">dotfiles</h1>

[install arch linux](install_arch.md)
-------------------------------------

![](./config/qtile/screen.png)
------------------------------

#### System configuration
- `OS` Arch
- `WM` Qtile
- `Terminal` Alacritty
- `Shell` zsh
- `Editor` nvim
- `File manager` ranger, mc
- `Browser` firefox
- `Font` Jatbrains Mono
- `Icon font` FontAwesome5
- `Launcher` dmenu, rofi

#### Install configs
Since i use **[rcm](https://github.com/thoughtbot/rcm)** set it
~~~bash
yay -S rcm
~~~

And install configs
~~~bash
git clone https://github.com/Smirnov-O/dotfiles .dotfiles
rcup
~~~
