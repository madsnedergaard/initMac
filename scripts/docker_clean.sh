#!/usr/bin/env bash
set -euo pipefail

echo "- Removing all old images..."
docker system prune -a --force --filter 'until=720h'

echo "- Removing dangling images and volumes..."

docker system prune --force --volumes # dangling
