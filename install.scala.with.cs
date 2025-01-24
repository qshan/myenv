#!/bin/bash

alias cs='/data/tools/scala/cs-x86_64-pc-linux.run';

cs setup;

# https://www.scala-lang.org/download/
#install specific version
# cs install scala:3.1.2 && cs install scalac:3.1.2
# cs install scala:2.13.11 && cs install scalac:2.13.11
# cs install scala:2.12.18 && cs install scalac:2.12.18

# cs install scala:2.12.15 && cs install scalac:2.12.15 && cs install scaladoc:2.12.15

# cs info, downgrade the cs version
# location: $HOME/.local/share/coursier/bin/cs
# $HOME/.local/share/coursier/bin/.cs.aux
## After back up .cs.aux file, replace the cs with version you needed, like
## ln -s cs-x86_64-pc-linux.v2.1.22 .cs.aux

# export PATH="$HOME/.local/share/coursier/bin:$PATH"
#
####add·the·scala·alternative·linker↵
####update-alternatives:·····--install··<link>·········<name>·<path>············<priority>↵
#
#·sudo·update-alternatives···--install··/usr/bin/scala·scala··/home/fshan/.local/share/coursier/bin/scala········1↵
#·sudo·update-alternatives···--install··/usr/bin/scala·scala··/usr/share/scala-2.11/bin/scala········2↵
####update·the·default·as·scala↵
#·sudo·update-alternatives·--config·scala↵
####then·select·1
#
#·sudo·update-alternatives···--install··/usr/bin/scalac·scalac··/home/fshan/.local/share/coursier/bin/scalac········1↵
#·sudo·update-alternatives···--install··/usr/bin/scalac·scalac··/usr/share/scala-2.11/bin/scalac········2↵
####update·the·default·as·scalac↵
#·sudo·update-alternatives·--config·scalac↵
####then·select·1
