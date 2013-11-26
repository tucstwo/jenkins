if [ -z "$HOME" ]
then
  echo HOME not in environment, guessing...
  export HOME=$(awk -F: -v v="$USER" '{if ($1==v) print $6}' /etc/passwd)
fi

cd $WORKSPACE
mkdir -p ../android
cd ../android
export WORKSPACE=$PWD



cd jenkins
## Get rid of possible local changes
git reset --hard
git pull -s resolve
sudo chmod 777 build.sh
exec ./build.sh
