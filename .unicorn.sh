#!/bin/sh

# This shell script gets called about every 10 seconds when unicorn is down.

set -e

# app settings
USER="rails"

# environment settings
PATH="/home/$USER/.rbenv/shims:/home/$USER/.rbenv/bin:$PATH"

RAILS_ENV="production" PATH="/home/$USER/.rbenv/shims:/home/$USER/.rbenv/bin:$PATH" bundle exec unicorn -c config/unicorn.rb -E $ENV -D
