
## Get rid of possible local changes
git reset --hard
git pull -s resolve

exec ./build.sh
