NOTE: Git doesn't track empty folders, so if you want to create or maintain an
empty folder in a git repository (as I do in this template), you could place an
empty file in the folder called .gitkeep.

To do so for an entire tree of folders, use the command:

find . -name .git -prune -o -type d -empty -exec touch {}/.gitkeep \;


