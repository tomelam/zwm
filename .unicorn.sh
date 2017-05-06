#!/bin/sh

# This shell script gets called about every 10 seconds when unicorn is down.

set -e

# app settings
USER="rails"
APP_NAME="zwm"
APP_ROOT="/home/$USER/$APP_NAME"
#ENV="development"
ENV="development"

# environment settings
PATH="/home/$USER/.rbenv/shims:/home/$USER/.rbenv/bin:$PATH"
# CMD="cd $APP_ROOT && bundle exec unicorn -c config/unicorn.rb -E $ENV -D" >>/home/rails/mashwebclub.unicorn.sh.out
PID="$APP_ROOT/shared/pids/unicorn.pid"
OLD_PID="$PID.oldbin"

RAILS_ENV="development" PATH="/home/$USER/.rbenv/shims:/home/$USER/.rbenv/bin:$PATH" bundle exec unicorn -c config/unicorn.rb -E $ENV -D
