#!/bin/bash

# Define the repository URLs
BOTS_REPO="git@github.com:ecuation/bootree-bots.git"
INFRA_REPO="git@github.com:ecuation/bootree-infra.git"
USERS_REPO="git@github.com:ecuation/bootree-users.git"

# Define the target directories
BOTS_DIR="bots"
INFRA_DIR="infra"
USERS_DIR="users"

# Clone the repositories
echo "Cloning bots repository..."
git clone $BOTS_REPO $BOTS_DIR

echo "Cloning infra repository..."
git clone $INFRA_REPO $INFRA_DIR

echo "Cloning users repository..."
git clone $USERS_REPO $USERS_DIR

echo "All repositories cloned successfully."