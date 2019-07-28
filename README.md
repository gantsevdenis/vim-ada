## General Information

Vim-Ada is ready to deploy set of plugins and settings which helps write Ada
(and in many other programming languages) programs. See "Installation"
section for detailed instructions how to install it and "Plugins" section for
informations about included plugins and changes (if any) to them.

All changes to plugins are under respective plugin license which can be found
in plugins directory. If plugin don't have license info included, then all my
changes are in public domain.

If you are new to Vim and want to have more user friendly experience with this
editor, I recommend to use [SpaceVim](https://spacevim.org/). Main differences
between vim-ada and SpaceVim:

* Design in **Keep It Simple Stupid** principle: Vim-ada is just a bundle of
  plugins which can be easily added, removed or locally edited to suit your
  needs.
* No changes to core systems of Vim: All keyboard shortcuts are that same,
  thus, Vim-ada require less learning for experienced Vim/NeoVim users.
* Easy to deploy: just download configuration file and replace your config,
  rest will be done after first start of Vim/NeoVim.
* Much younger, less polished than SpaceVim.

## Screenshots

![Dark background](screens/dark.png)

![Light background](screens/light.png)

## Installation

### For versions 7.0 and below

Just copy directory `vimada` to your Vim `runtimepath` directory (on Unix
systems it is often `$HOME/.vim`) to directory `pack` (so, full path on Unix
will be looks like `$HOME/.vim/pack/vimada`). For upgrade from previous
version: just replace old files with new.

### From version 8.0

Set included `.vimrc` file as your configuration file (or
source it from your configuration file). Since version 8.0 of vim-ada it is
required, because all plugins are managed by Plug plugin which must be
installed first. For upgrade, use Plug commands.

### Additional steps

To enable all options, you been need to install:

* Universal Ctags (this version is maintained and have full support for Ada
  language) from https://ctags.io for generating *tags* files needed for Vim
  auto-completion.
* Other dependency is Zeal from https://zealdocs.org/. Additionally, for Ada
    documentation, you will be need to download Ada specification docset. You
    can do this in few ways:

    a) Download Docset Feed from https://zealusercontributions.herokuapp.com/
    (recommended way). There you will find detailed information how to install
    docset.

    b) Download from https://www.laeran.pl/download/Ada.docset.zip.

    c) Build it alone: look at https://github.com/thindil/ada-docset for
    instructions and code needed to build Ada docset.
* Optional, but highly recommended: ROBODoc from https://rfsber.home.xs4all.nl/Robo/
  for generating code documentation. For generating documentation from Ada
  code, you may need file *robodocada.rc* from https://github.com/thindil/roboada

## Plugins

### A.vim

Webpage: https://github.com/thindil/a.vim

Allow fast switch between spec (.ads) and body (.adb) files (works with C,
C++ headers files too). This plugin wasn't modified.

### AdaBundle

Webpage: https://github.com/thindil/Ada-Bundle

This is modified version of standard Ada support for Vim/Neovim. This plugin
wasn't modified but have some custom configuration in `.vimrc` file.

### Airline

Webpage: https://github.com/vim-airline/vim-airline

Status bar and buffer list for Vim. This plugin wasn't modified but have some
custom configuration in `.vimrc` file.

### Anyfold

Webpage: https://github.com/pseewald/vim-anyfold

Generic folding mechanism and motion based on indentation. Fold anything that
is structured into indented blocks. Quickly navigate between blocks. This
plugin wasn't modified.

### Auto-pairs

Webpage: https://github.com/jiangmiao/auto-pairs

Insert or delete brackets, quotes in pair. This plugin wasn't modified.

### Fugitive

Webpage: https://github.com/tpope/vim-fugitive

Git wrapper, allow do a lots of git "things" inside Vim. This plugin wasn't
modified.

### GitGutter

Webpage: https://github.com/airblade/vim-gitgutter

Shows a git diff in the 'gutter' (sign column). It shows which lines have been
added, modified, or removed. You can also preview, stage, and undo individual
hunks. The plugin also provides a hunk text object. This plugin wasn't
modified but have some custom configuration in `.vimrc` file.

### GutenTags

Webpage: https://github.com/ludovicchabant/vim-gutentags

Gutentags is a plugin that takes care of the much needed management of tags
files in Vim. It will (re)generate tag files as you work while staying
completely out of your way. It will even do its best to keep those tag files
out of your way too. It has no dependencies and just works. This plugin wasn't
modified but have some custom configuration in `.vimrc` file.

### Header

Webpage: https://github.com/alpertuna/vim-header

Easily adds brief author info and license headers. This plugin have added Ada
support and have some custom configuration in `.vimrc` file.

### IndentLine

Webpage: https://github.com/Yggdroot/indentLine

This plugin is used for displaying thin vertical lines at each indentation
level for code indented with spaces. This plugin wasn't modified but have some
custom configuration in `.vimrc` file.

### MW-Utils

Webpage: https://github.com/marcweber/vim-addon-mw-utils

vim: interpret a file by function and cache file automatically. This plugin
wasn't modified. This plugin is required for SnipMate plugin to work.

### NERDTree

Webpage: https://github.com/scrooloose/nerdtree

The NERDTree is a file system explorer for the Vim editor. Using this plugin,
users can visually browse complex directory hierarchies, quickly open files
for reading or editing, and perform basic file system operations. This plugin
can also be extended with custom mappings using a special API. This plugin
wasn't modified but have some custom configuration in `.vimrc` file.

### Plug

Webpage: https://github.com/junegunn/vim-plug

A minimalist Vim plugin manager. This wasn't modified. This plugin is
required to load other plugins included in bundle. Required configuration
of this plugin is in `.vimrc` file.

### Rainbow Parentheses Improved

Webpage: https://github.com/luochen1990/rainbow

Updated version of Rainbow Parenthesis. Help you read complex code by showing
diff level of parentheses in diff color. This plugin wasn't modified but have
some custom configuration in `.vimrc` file.

### Robovim

Webpage: https://github.com/thindil/robovim

Robovim is simple Vim plugin which allow easier add Robodoc formatted
documentation to source code. This plugin wasn't modified.

### SnipMate

Webpage: https://github.com/garbas/vim-snipmate

SnipMate aims to provide support for textual snippets, similar to TextMate or
other Vim plugins like UltiSnips. This plugin wasn't modified.

### Snippets

Webpage: https://github.com/honza/vim-snippets

This repository contains snippets files for various programming languages.
It is community-maintained and many people have contributed snippet files and
other improvements already.

### Startify

Webpage: https://github.com/mhinz/vim-startify

This plugin provides a start screen for Vim. It provides dynamically created
headers or footers and uses configurable lists to show recently used or
bookmarked files and persistent sessions. All of this can be accessed in a
simple to use menu that even allows to open multiple entries at once. This
plugin wasn't modified.

### Syntastic

Webpage: https://github.com/vim-syntastic/syntastic

Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. It
runs files through external syntax checkers and displays any resulting errors
to the user. This can be done on demand, or automatically as files are saved.
If syntax errors are detected, the user is notified and is happy because they
didn't have to compile their code or execute their script to find them. This
plugin have changes to Ada support:

- Default checking flag was changed from `-gnats` to `-gnatc`.
- Fixed it to work with GNAT project files too.

Additionally, this plugin have some custom configuration in `.vimrc` file
which is required to proper work of plugin.

### TagBar

Webpage: https://github.com/majutsushi/tagbar

Tagbar is a Vim plugin that provides an easy way to browse the tags of the
current file and get an overview of its structure. It does this by creating a
sidebar that displays the ctags-generated tags of the current file, ordered by
their scope. This means that for example methods in C++ are displayed under
the class they are defined in. This plugin wasn't modified but have some
custom configuration in `.vimrc` file.

### Tlib

Webpage: https://github.com/tomtom/tlib_vim

This library provides some utility functions. This plugin wasn't modified. This
plugin is required by SnipMate to work.

### Xml

Webpage: none

This is just one line setting to enable spellchecking in XML files too.

### Zeavim

Webpage: https://github.com/KabbAmine/zeavim.vim

Zeavim allows to use the offline documentation browser [Zeal](http://zealdocs.org/)
from Vim. This plugin wasn't modified but have some custom configuration in
`.vimrc` file.

### PaperColor

Webpage: https://github.com/NLKNguyen/papercolor-theme

Used as default theme for Vim, have some additional support for Ada syntax.
Comes in two versions: dark (default if you use included `.vimrc`
configuration file) and light (default for no configuration). It is unmodified,
only some custom configuration is in `.vimrc` file.

### Gruvbox

Webpage: https://github.com/morhetz/gruvbox

Another theme available with this pack. More informations about this theme,
configuring and enabling it, you can find at it webpage. This version of
Gruvbox have added support for Ada syntax.

-------

That's probably all, feel free to use project Issues if you have any
problems, questions, ideas or bug reports about this pack.

Bartek thindil Jasicki
