# MARKDOWN FILE VIEWER

This is basically a markdown file viewer for the terminal. Helps to view the files in a more presentable format.

### Dependecies
- lynx (Terminal Browser)
- w3m (Terminal Browser)
- pandoc (General Markup Converter)

### Installation

#### Note:

This program is currently developed for debain distros (like ubuntu, kali.......). It can work with other distros 
if you install the dependencies manually.

#### How to install
_For Debian Distros_

- clone repostory
```bash
$ clone https://github.com/kurtiz/terminal-markdown-viewer.git
```

- make the install.sh executable and run it
```bash
$ chmod +x install.sh
$ ./install.sh
```

_For Other Distros_

- Install the dependencies. The dependencies have been listed above. 
- After installing the dependencies make `install-other.sh` executable and run it
```bash
$ chmod +x install-other.sh
$ ./install-other.sh
```

### Usage
_Sample usage_

```bash
$ md [options | flags] <name_of_file> | <path-to_file>
```
- To view file
```bash 
$ md README.md
```
or 
```bash
$ md /path/README.md
```
- To see the help message
```bash
$ md -h
```
- To see version of the program
```bash
$ md -v
```
- To view file in color mode
``` bash
$ md -c README.md
```
