#!/usr/bin/env bash
# Run in a terminal on the Arch host; sudo will ask for your password.
set -euo pipefail

repo_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
install=(
  base-devel git gcc clang llvm gdb
  jdk-openjdk maven go rust
  python python-pip uv nodejs npm
  libbpf bpf bpftrace linux-headers linux-lts-headers
  terraform aws-cli-v2 docker docker-buildx docker-compose
)

# Keep frameworks, SDKs, and service versions under each project's control:
# Spring Boot/Maven, boto3/uv, React/Tailwind/Recharts/npm, and
# Kafka/Redis/Prometheus containers. Do not install these globally.
sudo -v
# Arch needs a full upgrade to avoid partial-upgrade dependency mismatches.
sudo pacman -Syu --needed "${install[@]}"

package_list=$(mktemp)
trap 'rm -f -- "$package_list"' EXIT
LC_ALL=C pacman -Qqe | LC_ALL=C sort -u > "$package_list"
cp -- "$package_list" "$repo_dir/pkglist.txt"
cp -- "$package_list" "$repo_dir/packages/arch.txt"
printf 'Development packages configured; pkglist.txt and packages/arch.txt updated.\n'
