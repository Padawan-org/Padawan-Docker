#!/bin/bash
# Just call bundle install if needed
bundle check || bundle install
# Remove previous PID, when force close, it will remain on the tmp dir, we don't need it
rm ./tmp/pids/server.pid
# Exec rails
bundle exec rails s -b 0.0.0.0 -p 3000
