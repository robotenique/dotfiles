# dotfiles
This is where I store my dotfiles!
> For my gnu/linux - debian config

Mostly, atom configuration files and the zsh configuration (using prezto atm)!

**Update**:

The following scripts are **deprecated**:
1. `updater.sh`: I don't use all of the programs there anymore (example: Atom).
2. `vivaldi-backup.sh`: Vivaldi now has a built-in Sync feature, no need to keep copying the files manually.




# General Commands Cheatsheet

After a clean GNU/Linux install, here are some useful commands I have to do everytime.


## Gnome Themes

Given that you're using Gnome and have `gnome-tweaks` installed, I usually install the following themes:

1. Sweet-Dark (theme)
2. Sweet-Icons -> Sweet-Rainbow (Icon theme)
3. Sweet-Cursor (Cursor Theme)

You have to download all of them, extract them, then copy the folders to `/usr/share/themes/` or `/usr/share/icons/`. Then, you just need to change the Cursor and Icon theme files to inherit from the current Icon and Cursor themes you're using. For example in Manjaro Gnome the default Icon theme is `papirus-dark-maia`, so in the `index.theme` file inside the `Sweet-Rainbow` folder I add this theme as the first argument:

```Inherits=papirus-dark-maia,candy-icons,breeze-dark,gnome,ubuntu-mono-dark,Mint-X,elementary,gnome,hicolor```

Then just select these themes from inside `gnome-tweaks` (they should appear there).


## Python + Jupyter Notebook

1. Install miniconda
2. Install jupyter notebook
3. Install ipykernel + register kernel to be used inside Jupyter Env:

```$ python -m ipykernel install --user```
\
4. Install Black

```$ conda install -c conda-forge black```

5. Install Jupyter Extensions

```$ conda install -c conda-forge jupyter_contrib_nbextensions```

6. Enable Jupyter Extensions

```$ jupyter contrib nbextension install --user```

7. Install and enable Black Formatter

```bash
$ jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user
$ jupyter nbextension enable jupyter-black-master/jupyter-black 
```

8. Install Jupyter Themes and configure theme;

```bash
$ pip install jupyterthemes
$ jt -t grade3 -f roboto -fs 11 -kl -cellw 90% -T
```

9. Enable the following extensions:

- Table of Contents (2)
- Limit Output
- Toggle all line numbers
- Hide input all
- Collapsible Headings
- ExecuteTime

## Linux Script autostart

If using an [XDG Autostart](https://wiki.archlinux.org/index.php/XDG_Autostart) compatible distro, the startup files need to be placed at:

`~/.config/autostart/`

All the `.desktop` files inside this folder are automatically started at startup. This is where `gnome-tweaks` will save the configs for startup applications you manually add there. However, in the plugin you can only add already registered applications. To add a custom command/script you need to manually create a `.desktop` file.

In the `startup/` folder of this repo there's a `.desktop` custom file that should be placed at `~/.config/autostart/`, and the `Exec` value should be changed accordingly depending on the username.

Then all the `.sh` should be copied to this same folder so that the `.desktop` can find it easily and without changing `$PATH` variables and stuff like that.
