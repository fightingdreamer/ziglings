#!/bin/sh

find exercises -name '*.zig' |
  entr sh -c 'ls exercises -c | grep ".*\.zig" | head -1 | cut -f 1 -d "_" | xargs -I "{}" zig build -Dn={}'
