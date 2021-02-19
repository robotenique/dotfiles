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
$ jt -t grade3 -f roboto -fs 12 -kl -cellw 90% -T
```

9. Enable the following extensions:

- Table of Contents (2)
- Limit Output
- Toggle all line numbers
- Hide input all
- Collapsible Headings
- ExecuteTime
