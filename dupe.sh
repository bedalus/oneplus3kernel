#!/bin/bash
#
# reads patch.list and produces a patch-id for each commit in the list
# (useful to tell if an identical patch has been committed)

while IFS=$' \t\n\r' read -r LINE
do
COMMITHASH=$LINE

# here we go...

git show $COMMITHASH | git patch-id

# go back to top, get next patch
done <patch.list

# it's all over
exit 0

