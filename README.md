exa
===

Adds aliases for [eza] or [exa]. Also change default blue colors to blue bold (file's
date, modified flag in Git).

Aliases
-------

  * `ls` lists directories first (applies to all aliases below).
  * `ll` lists with long format and git status (applies to all aliases below).
  * `l`  lists all files.
  * `lr` lists recursively as a tree.
  * `lx` lists sorted by extension.
  * `lk` lists sorted by largest file size last.
  * `lt` lists sorted by newest modification time last.
  * `lc` lists sorted by newest status change (ctime) last.

Advanced settings
-----------------

By default, this module will define the following ls alias:

    alias ls='eza --group-directories-first'

You can override the default alias by defining one with your preferred options
in your `~/.zshrc` after the module is initialized. Example:

    alias ls='eza --group-directories-first --icons'

Requirements
------------

This module must be sourced *after* the [utility] module, so this module can
override the aliases set by that one.

[eza]: https://github.com/eza-community/eza
[exa]: https://the.exa.website
[utility]: https://github.com/zimfw/utility
