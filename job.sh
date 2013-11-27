cd $WORKSPACE
mkdir -p ../android
cd ../android
export WORKSPACE=$PWD

if [ ! -d jenkins ]
then
  git clone git://github.com/fusion2/jenkins.git
fi

cd jenkins
## Get rid of possible local changes
git reset --hard
git pull -s resolve

exec ./build.sh
