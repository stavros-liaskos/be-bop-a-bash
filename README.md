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
* [nvm](https://github.com/creationix/nvm#mac-os-troubleshooting)


## Info
To undefine an alias:
```bash
unalias ll
```
To undefine a function:
````bash
unset -f foo
````
To list all of your configured aliases:
```bash
alias
```

You can always invoke cat after aliasing `ccat` by typing `\cat`.

## Caveats
Do NOT use `brew` to install node and nvm. 
[See here](https://github.com/creationix/nvm/issues/855)   
If so, fix with:

```
rm -rdf /usr/local/lib/node_modules
rm -rdf /usr/local/bin/npm
```


# TODO
Add [inquirer](https://github.com/SBoudrias/Inquirer.js) and have more friendly user experience (i.e; promt to install each plugin etc)

## Extra
- [Open PhpStorm from CLI](https://intellij-support.jetbrains.com/hc/en-us/community/posts/208396265-Can-I-open-a-directory-from-command-line-)  
- [Live templates in PhpStorm](https://www.jetbrains.com/help/phpstorm/template-variables.html)
- [Share live templates](https://www.jetbrains.com/help/phpstorm/sharing-live-templates.html)


## Sources
https://natelandau.com/my-mac-osx-bash_profile/    
https://github.com/mathiasbynens/dotfiles    
https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks    
