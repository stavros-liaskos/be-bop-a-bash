# Be bop a Bash
My bash configuration for Mac.

## Install
```bash
git clone https://github.com/stavros-liaskos/be-bop-a-bash.git && bash ./be-bop-a-bash/install.sh && source ~/.bash_profile
```

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

## Caveats
Do NOT use `brew` to install yarn, npm, node and nvm. 
[See here](https://github.com/creationix/nvm/issues/855)   
If so, fix with:

```
rm -rdf /usr/local/lib/node_modules
rm -rdf /usr/local/bin/npm
```

## TODOs
add script that installs `ccat`, `htop` and enables the .global_gitignore
`git config --global core.excludesfile ~/.gitignore_global`

## Sources
https://natelandau.com/my-mac-osx-bash_profile/    
https://github.com/mathiasbynens/dotfiles    
https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks    
