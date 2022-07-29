# ⭐ Wonderful macOS Dotfiles

## 💡 Config

   <img src="https://user-images.githubusercontent.com/60739808/181580271-ca29cfcb-4432-4ad2-93c9-7383e2ece8d4.jpg" alt="Rice Showcase" align="right" width="400px">

   Welcome to my **Dotfiles for macOS**! 

   The widgets seen above were created due to the fact that there aren't much macOS widgets, in comparison to the many widget programs for Linux, such as    **ElKowars wacky widgets**.
   
   I hope these widgets can be useful for **fellow macOS users**, who wish to rice and expand their desktop experience as much as possible!

   Here are the details of my setup:

   - **OS:** macOS
   - **DE:** aqua
   - **WM:** [yabai](https://github.com/koekeishiya/yabai)
   - **Term:** alacritty/kitty
   - **Shell:** [zsh](https://www.zsh.org/)
   - **Prompt:** [starship](https://starship.rs/)
   - **Dock:** [uBar](https://brawersoftware.com/products/ubar)
   - **Search:** [alfred 4](https://www.alfredapp.com/whats-new/)
   - **Colorscheme:** [janleigh's](https://github.com/janleigh/dotfiles)
   - **Widgets:** [Ubersicht](https://www.macupdate.com/app/mac/60400/ubersicht) + [GeekTools](https://www.macupdate.com/app/mac/10404/geektool)

## 🛠️ Setup

:warning: ‎ **You can skip Brew and yabai installation if you've done so already! Also, these configs were made for the 14-inch MacbookPro, therefore on other devices, you may have to tinker around with the widget settings.**

<details>
<summary><b>1. Install Required Dependencies </b></summary>
<br>
 
> Download the [Brew](https://brew.sh/) **package manager** for macOS.
 
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
 
> Install the [yabai](https://github.com/koekeishiya/yabai) WM. Just [RTFM](https://en.wikipedia.org/wiki/RTFM) on the Github page.
 
> Install shell + prompt
 
```sh
brew install zsh starship
```
   
> Install fonts
 
```sh
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
```
 
> Install Alacritty and/or Kitty
 
```sh
brew install --cask kitty
brew install --cask alacritty
```
   
> Install Ubersicht + Geektools + uBar + alfred 4

   1. https://www.macupdate.com/app/mac/60400/ubersicht
   2. https://www.macupdate.com/app/mac/10404/geektool
   3. https://brawersoftware.com/products/ubar
   4. https://www.alfredapp.com/whats-new/

</details>

<details>
<summary><b>2. Install My Dotfiles</b></summary>
<br>

> Clone this repository

```sh
git clone https://github.com/Dill101/dots.git
cd dotfiles
```

> Copy config files

```sh
cp -r conf/* ~/.config/
```

```sh
cd etc/
mv yabairc .yabairc
mv skhdrc .skhdrc
mv zshrc .zshrc
cp * ~/
```

> Install a couple of extra necessary fonts

Necessary fonts:

- **Product Sans**
- **Font Awesome 6**
- **Sarasa Mono CL** 
   
Product Sans and Sarasa Mono CL are **provided** within the cloned repository. Open the fonts folder, install the OTF and TTF files.

Install [Font Awesome 6 Free](https://fontawesome.com/) manually.
   
</details>

<details>
<summary><b>3. Install Widgets</b></summary>
<br>

> Install default [simple-bar](https://github.com/Jean-Tinland/simple-bar)

```sh
git clone https://github.com/Jean-Tinland/simple-bar $HOME/Library/Application\ Support/Übersicht/widgets/simple-bar
```

> Access settings tab by hovering over bar, then pressing **cmd + ,**
   
Change yabai path to its respective location (find out through, **which yabai**):
   
<img width="621" alt="Screenshot 2022-07-29 at 12 03 37 AM" src="https://user-images.githubusercontent.com/60739808/181585712-0746503d-316b-4689-aad6-aea2ebc66780.png">

Make sure the following is turned off:
   
<img width="320" alt="Screenshot 2022-07-29 at 12 04 22 AM" src="https://user-images.githubusercontent.com/60739808/181585953-acb1b4b1-7378-4466-b740-7bb4fff67dad.png">

> Now copy over the folders within the widgets folder into the Ubersicht folder. Allow the **new** simple-bar folder to overwrite the previous installed one.

```sh
cd dots/Ubersicht
cp -r * $HOME/Library/Application\ Support/Übersicht/widgets/
```

> Copy Geektool configs
   
```sh
cd dots/Geektools
cp assets/* ~/Documents
mv scripts geek
cp -r geek ~/Documents
cp widgets/* ~/Documents
```

> Change directory path names for all scripts

```sh
cd ~/Documents/
nano /file/name/
```

> Open Finder, go into Documents, open each .glet file and Geektools should then open up.
  
  


