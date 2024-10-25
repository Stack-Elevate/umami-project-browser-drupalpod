#!/usr/bin/env bash
set -eu -o pipefail

# Prepare the custom themes directory.
mkdir -p "$GITPOD_REPO_ROOT"/web/themes/custom

# Copy Umami theme from the demo_umami profile.
cp -r "$GITPOD_REPO_ROOT"/web/core/profiles/demo_umami/themes/umami "$GITPOD_REPO_ROOT"/web/themes/custom/

# Insert the version constraint (required in this now-non-core theme).
echo "core_version_requirement: \"^10.3 || ^11\"" >> "$GITPOD_REPO_ROOT"/web/themes/custom/umami/umami.info.yml
