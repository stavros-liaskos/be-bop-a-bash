# Be bop a Bash
My bash configuration for Mac.

## Install
```bash
git clone https://github.com/stavros-liaskos/be-bop-a-bash.git && cd be-bop-a-bash && bash plugins-install.sh && bash install.sh 
```

## Update Profile
```bash
./install.sh
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

You can always invoke cat after aliasing `ccat` by typing `\cat`.

## Caveats
Do NOT use `brew` to install yarn, npm, node and nvm. 
[See here](https://github.com/creationix/nvm/issues/855)   
If so, fix with:

```
rm -rdf /usr/local/lib/node_modules
rm -rdf /usr/local/bin/npm
```

## Extra
- [Open PhpStorm from CLI](https://intellij-support.jetbrains.com/hc/en-us/community/posts/208396265-Can-I-open-a-directory-from-command-line-)  


## Sources
https://natelandau.com/my-mac-osx-bash_profile/    
https://github.com/mathiasbynens/dotfiles    
https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks    
