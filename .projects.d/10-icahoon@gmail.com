#
# Copyright (c) 2018 by Ian Cahoon <icahoon@gmail.com>
# All rights reserved.
#

export _github_="${_src_}/github.com"
export _icahoon_="${_github_}/icahoon"
export _dev_="${_src_}/icahoon.dev"

# ----

export _notes_="${_dev_}/notes"
export _tools_="${_dev_}/tools"
export _dotfiles_="${_dev_}/dotfiles"
export _examples_="${_dev_}/examples"

