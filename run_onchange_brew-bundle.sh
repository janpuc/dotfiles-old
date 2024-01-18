#!/bin/bash

# Brewfile hash: {{ include "Brewfile" | sha256sum }}
brew bundle cleanup --force
