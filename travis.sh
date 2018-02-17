#!/bin/bash

# Only use `grunt ci` for commits pushed to this repo. Fall back to regular test
# for pull requests (as secure variables won't be exposed there).
if [ -z "$BROWSERSTACK_LOCAL_IDENTIFIER" ]; then
  npm test
else
  grunt ci --verbose
fi
