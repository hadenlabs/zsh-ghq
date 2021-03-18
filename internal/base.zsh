#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function ghq::internal::cookiecutter::install {
    if ! core::exists pip; then
        message_warning "PLease install pip for continue"
        return
    fi
    message_info "Installing cookiecutter for ${GHQ_PACKAGE_NAME}"
    python -m pip install --user cookiecutter
    message_success "Installed cookiecutter for ${GHQ_PACKAGE_NAME}"
}
