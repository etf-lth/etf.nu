#!/usr/bin/env bash
# Regenerates assets/css/styles.css from the theme SCSS. Needs Node + pnpm. Run only when SCSS/params.styles change.
set -euo pipefail
cd "$(dirname "$0")/.."
OVERRIDE=layouts/partials/head/css.html
mv "$OVERRIDE" "$OVERRIDE.off"
trap 'mv "$OVERRIDE.off" "$OVERRIDE"; rm -rf /tmp/css-build' EXIT
pnpm install --frozen-lockfile
pnpm exec hugo --environment production --destination /tmp/css-build
cp /tmp/css-build/css/styles.*.css assets/css/styles.css
echo "Updated assets/css/styles.css, commit it."