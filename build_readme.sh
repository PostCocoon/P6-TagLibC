#!/bin/sh

truncate -s0 README.md;
for file in $(find lib -type f -name '*.pm6'); do
    echo  "Writing docs for: $file";
    perl6 -Ilib --doc=Markdown "$file" >> README.md
    echo >> README.md
done;
