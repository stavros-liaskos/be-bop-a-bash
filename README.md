# Be bop a Bash
My bash configuration for Mac.

## Install

#### Step 1: Clone
```bash
git clone https://github.com/stavros-liaskos/be-bop-a-bash.git && cd be-bop-a-bash
```

#### Step 2: Install Plugins
Install all the plugins
```bash
bash plugins-install.sh
```

#### Step 3: Update Profile
Install your bash_profile
```bash
./install.sh
```

> Note: Run this script after `git pull` to install your the latest `.bash_profile` 

## Features
* [ccat](https://github.com/jingweno/ccat)
* [pip](https://pypi.org/project/pip/)
* [wget](http://brewformulas.org/Wget)
* [youtube-dl](http://rg3.github.io/youtube-dl/)
* [htop](https://unix.stackexchange.com/questions/98253/how-do-i-install-htop-inside-mac-os-x)
* [ffmpeg](https://www.ffmpeg.org/)
* [yarn]()
* [n](https://github.com/tj/n)
* [ImageMagick](https://www.imagemagick.org/script/index.php)
* [Httrack](https://www.httrack.com/)
* [ncdu](https://dev.yorhel.nl/ncdu)

Sets `.gitignore_global` with some basic excludes.   
In order to protect user's privacy (i.e. tokens), `.bash_profile` imports `.tokens` file from the same directory. 


## Info
To reset an alias:
```bash
unalias ll
```
To list all of your configured aliases:
```bash
alias
```
To reset a function:
````bash
unset -f foo
````
To see the definition (for each defined alias, keyword, function, builtin or executable file):
```bash
type -a foo
```
To see the type (for each defined alias, keyword, function, builtin or executable file):
```bash
type -t foo
```

You can always invoke cat after aliasing `ccat` by typing `\cat`.

## Todo/Known Issues
1. add `brew install jq`
1. add conditional installers for plugins
1. add shortcut for `add . && com 's' && pus`

## Extra
- [Open PhpStorm from CLI](https://intellij-support.jetbrains.com/hc/en-us/community/posts/208396265-Can-I-open-a-directory-from-command-line-)  
- [Run eslint --fix on each Save](https://www.jetbrains.com/help/phpstorm/2019.3/configuring-keyboard-and-mouse-shortcuts.html?utm_campaign=PS&utm_medium=link&utm_source=product&utm_content=2019.3#add-keyboard-shortcut)   
- [Live templates in PhpStorm](https://www.jetbrains.com/help/phpstorm/template-variables.html)
- [Share live templates](https://www.jetbrains.com/help/phpstorm/sharing-live-templates.html)
- [Share PhpStorm settings through repository](https://www.jetbrains.com/help/phpstorm/sharing-your-ide-settings.html#settings-repository)


## Sources
https://natelandau.com/my-mac-osx-bash_profile/    
https://github.com/mathiasbynens/dotfiles    
https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks    
