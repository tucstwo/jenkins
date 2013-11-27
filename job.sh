cd $WORKSPACE
mkdir -p ../android
cd ../android
export WORKSPACE=$PWD

## Get rid of possible local changes
git reset --hard
git pull -s resolve

exec ./build.sh
