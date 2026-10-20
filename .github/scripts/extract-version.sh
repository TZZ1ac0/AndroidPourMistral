#!/bin/bash

# Script to extract the latest version from CHANGELOG.md
# Returns the version number (without brackets) or exits with error

CHANGELOG_FILE="CHANGELOG.md"

if [ ! -f "$CHANGELOG_FILE" ]; then
    echo "Error: $CHANGELOG_FILE not found"
    exit 1
fi

# Extract the first version header that is not [Non publié] or [Unreleased]
VERSION=$(grep -E '^## \[[0-9]+\.[0-9]+\.[0-9]+\]' "$CHANGELOG_FILE" | head -n 1)

if [ -z "$VERSION" ]; then
    echo "Error: No version found in $CHANGELOG_FILE"
    exit 1
fi

# Extract version number from [1.1.0] format
VERSION_NUMBER=$(echo "$VERSION" | sed -E 's/^## \[//' | sed -E 's/\].*//')

echo "$VERSION_NUMBER"
