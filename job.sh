cd $WORKSPACE
mkdir -p ../android
cd ../android
export WORKSPACE=$PWD

cd jenkins
## Get rid of possible local changes
git reset --hard
git pull -s resolve

sudo chmod +x ./build.sh
sudo ./build.sh
