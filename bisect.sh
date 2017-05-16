#!/bin/sh

bundle || exit 127 # Cannot bundle? Abort, I'll take a look.

bundle exec ./bisect.rb
