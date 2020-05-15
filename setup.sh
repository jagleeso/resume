#!/usr/bin/env bash
set -x
set -e

main() {
    sudo apt install -y rubber ruby-guard ruby-guard-shell 
    sudo apt install -y texlive-full
}

main "$@"
