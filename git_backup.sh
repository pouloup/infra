#!/bin/bash

set +x

pushd "$HOME"/Documents || exit
    git clone git@github.com:pouloup/infra.git
    DEST_DIR="$HOME"/Documents/infra
popd

pushd "$HOME"/infra || exit
    # lol Readme
     cp README.md "$DEST_DIR"

    # bitwarden conf backup
    # cp bitwarden/caddy.env "$DEST_DIR"/bitwarden
    # cp bitwarden/Caddyfile "$DEST_DIR"/bitwarden
    # cp bitwarden/caddy "$DEST_DIR"/bitwarden

    # scripts backup
    find . -maxdepth 2 -name "*.sh" -exec cp '{}' "$DEST_DIR" \;

    # docker-compose & .gitignore backup
    find . -maxdepth 2 -name "*.yml" -exec cp --parents '{}' "$DEST_DIR" \;
    find . -maxdepth 2 -name ".gitignore" -exec cp --parents '{}' "$DEST_DIR" \;
popd

pushd "$DEST_DIR" || exit
    git add -A
    git commit -m "Automatic commit 🤡"
    git push

    # Mistakes were made ; today I regret many of them.
    # cd .. && rm -rf "$DEST_DIR"
popd
