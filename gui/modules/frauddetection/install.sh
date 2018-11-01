#!/usr/bin/env bash
#set -x
ENABLED=1 # ENABLED=1 --> install, ENABLED=0 --> do nothing, ENABLED=-1 uninstall

function installSQL {
    echo ""
}

function install {
    installSQL
    echo "Fraud Detection module installed"
}

function uninstall {
    echo "Fraud Detection module uninstalled"
}

function main {
    if [[ ${ENABLED} -eq 1 ]]; then
        install
    elif [[ ${ENABLED} -eq -1 ]]; then
        uninstall
    else
        exit 0
    fi
}

main
