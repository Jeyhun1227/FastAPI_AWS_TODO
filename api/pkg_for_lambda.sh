#!/bin/bash

# Exit if any command fails
set -eux pipefail

pip install -t lib -r requirements.txt
(cd lib; 7z a ../lambda_function.zip -r .)
7z a lambda_function.zip todo.py

# Clean up
rm -rf lib