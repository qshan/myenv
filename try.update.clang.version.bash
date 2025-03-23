#!/usr/bin/env bash
#example ./try.update.gcc.version.bash 12

export input_argument1="$1"
echo "input_argument1 is ${input_argument1}"

cd /usr/bin

# clang++ -> clang++-10
# clang -> clang-10
# clangd -> clangd-10
# clang-apply-replacements -> clang-apply-replacements-10
# clang-check -> clang-check-10
# clang-format -> clang-format-10
# clang-format-diff -> clang-format-diff-10
# clang-query -> clang-query-10
# clang-tidy -> clang-tidy-10
# clang-tidy-diff -> clang-tidy-diff-10.py

ls -alh clang++ clang clangd clang-apply-replacements clang-check clang-format clang-format-diff clang-query clang-tidy clang-tidy-diff

sudo ln -sf                  clang++-${input_argument1} clang++
sudo ln -sf                    clang-${input_argument1} clang
sudo ln -sf                   clangd-${input_argument1} clangd
sudo ln -sf clang-apply-replacements-${input_argument1} clang-apply-replacements
sudo ln -sf              clang-check-${input_argument1} clang-check
sudo ln -sf             clang-format-${input_argument1} clang-format
sudo ln -sf        clang-format-diff-${input_argument1} clang-format-diff
sudo ln -sf              clang-query-${input_argument1} clang-query
sudo ln -sf               clang-tidy-${input_argument1} clang-tidy
sudo ln -sf          clang-tidy-diff-${input_argument1} clang-tidy-diff

#sudo ln -sf clang-apply-replacements-${input_argument1} clang-apply-replacements-10

ls -alh clang++ clang clangd clang-apply-replacements clang-check clang-format clang-format-diff clang-query clang-tidy clang-tidy-diff

cd -
