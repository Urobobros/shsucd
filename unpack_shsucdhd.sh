#!/usr/bin/env sh
set -eu
if [ ! -f "shsucdhd.exe.b64" ]; then
  echo "missing shsucdhd.exe.b64" >&2
  exit 1
fi
base64 -d shsucdhd.exe.b64 > shsucdhd.exe
chmod +x shsucdhd.exe
printf '%s\n' "Wrote shsucdhd.exe"
