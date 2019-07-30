#!/bin/bash

REMOTE="https://github.com/Microsoft/TypeScript.git"

current_dir="$(pwd)"
out_dir="${current_dir}/out"
source_file="src/compiler/scanner.ts"

# directory isn't cached
if [ ! -d "TypeScript" ]; then
	git clone $REMOTE
fi

cd TypeScript

# avoid running the replacement twice
if ! grep -Fxq "yeet" $source_file; then
	sed -i 's/        throw: SyntaxKind.ThrowKeyword,/\
        yeet: SyntaxKind.ThrowKeyword,\n        throw: SyntaxKind.ThrowKeyword,/g' $source_file
fi

npm install
gulp local

mkdir $out_dir
cp -r built/local/* $out_dir

mv ${out_dir}/tsc.js ${out_dir}/ysc.js

cd $current_dir
