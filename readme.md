# BashStyle
Stylise your bash.

## Auto-install:
```
$ curl -fsSL https://raw.githubusercontent.com/Slyke/BashStyle/master/web_install.sh | bash
```

## Manual install:
```
git clone git@github.com:Slyke/BashStyle.git
cd BashStyle
./install.sh
```

Changes should be applied immediately.


## To uninstall:
Open you `~/.bashrc` file and remove the lines:
```
if [ -f ~/.bashstyle/bashrc_inject ]; then
    . ~/.bashstyle/bashrc_inject
fi
```

The lines should be near the bottom of your file.

Restart your terminal for the changes to be applied.