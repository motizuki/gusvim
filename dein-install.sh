#!/bin/sh
# Standalone installer for Unixs
# Original version is created by shoma2da
# https://github.com/shoma2da/neobundle_installer

if [ $# -ne 1 ]; then
  echo "You must specify the installation directory!"
  exit 1
fi

# Installation directory
PLUGIN_DIR=$1
INSTALL_DIR="$PLUGIN_DIR/repos/github.com/Shougo/dein.vim"
echo "Install to \"$INSTALL_DIR\"..."
if [ -e "$INSTALL_DIR" ]; then
  echo "\"$INSTALL_DIR\" already exists!"
fi

echo ""

# check git command
if type git; then
  : # You have git command. No Problem.
else
  echo 'Please install git or update your path to include the git executable!'
  exit 1
fi

echo ""

# make plugin dir and fetch dein
if ! [ -e "$INSTALL_DIR" ]; then
  echo "Begin fetching dein..."
  mkdir -p "$PLUGIN_DIR"
  git clone https://github.com/Shougo/dein.vim "$INSTALL_DIR"
  echo "Done."
  echo ""
fi

echo "Complete setup dein!"
