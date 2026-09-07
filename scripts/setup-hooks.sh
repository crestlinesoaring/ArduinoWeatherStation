#!/bin/sh
set -e
cd "$(git rev-parse --show-toplevel)"
git config core.hooksPath .githooks
echo "Git hooks enabled (core.hooksPath=.githooks)"
