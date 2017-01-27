#!/bin/bash
#
# patch.list to contain a list of commit hashes available in the current repo, either from fetched remotes, or other branches.
# I'm just using this to merge in only the used stuff from linux 3.18.y

while IFS=$' \t\n\r' read -r LINE
do
COMMITHASH=$LINE
echo "hash is $COMMITHASH"

# here we go...

git cherry-pick $COMMITHASH --exit-code
if [ "$?" = "0" ]; then
	echo "successful commit"
else
	git cherry-pick --abort
fi

# go back to top, get next patch
done <patch.list

# it's all over
exit 0

