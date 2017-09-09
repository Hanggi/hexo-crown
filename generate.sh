#!/bin/sh 

echo "\033[1;33mDeleting public...\033[0m"
rm -rf ./public/

echo "\033[1;33mstart generating the hexo...\033[0m"
hexo generate

echo "\033[1;33mcp the output files...\033[0m"
cp -r ./public/* ./hanggi.github.io/

echo "\033[1;33mDone!\033[0m"
