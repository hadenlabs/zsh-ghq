#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function ghq::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_GHQ_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_GHQ_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_GHQ_PATH}"/internal/linux.zsh
      ;;
    esac
}

ghq::internal::main::factory

if ! core::exists rsync > /dev/null; then core:install rsync; fi
if ! core::exists ghq > /dev/null; then core:install ghq; fi
if ! core::exists cookiecutter; then ghq::internal::cookiecutter::install; fi