#!/bin/bash
rake assets:clean
rake assets:precompile
echo "Cleaned!"
rails s
