#
# Copyright (c) 2018 by Ian Cahoon <icahoon@gmail.com>
# All rights reserved.
#

export _github_="${_src_}/github.com"
export _icahoon_="${_github_}/icahoon"

export _dev_="${_src_}/icahoon.dev"

# ----

export _blog_="${_dev_}/blog"

export _notes_="${_dev_}/notes"
export _examples_="${_dev_}/examples"
export _research_="${_dev_}/research"

export _dotfiles_="${_dev_}/dotfiles"
export _dockerfiles_="${_dev_}/dockerfiles"

export _tinymuck_="${_dev_}/tinymuck"
export _tinymud_="${_dev_}/tinymud"

export _arc_="${_dev_}/arc"

export _games_="${_dev_}/games"
export _exercises_="${_dev_}/exercises"

# ----

export _envconfig_="${_github_}/kelseyhightower/envconfig"
export _errors_="${_github_}/pkg/errors"
export _libpq_="${_github_}/lib/pq"
export _logrus_="${_github_}/sirupsen/logrus"
export _grpc_="${_github_}/grpc/grpc-go"


export _strata_="${_github_}/trisolaria/ian"

# ---- misc

export _wtf_="${_github_}/benbjohnson/wtf"
