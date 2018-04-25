echo "Initializing workspace"
# upgrade dependencies
apt-get upgrade
apt-get update
# install dependencies
apt-get install gcc clang build-essential
echo "Downloading nodejs"
# download nodejs
wget https://nodejs.org/dist/v8.11.1/node-v8.11.1.tar.gz
# untar nodejs
tar -xvf node-v8.11.1.tar.gz
# compile nodejs from source
echo "compiling nodejs"
cd node-v8.11.1
./configure
make -j2
# install nodejs
make install
cd ../
# cleanup
rm -rf node*
echo "cleaning"
# install pm2
npm i -g pm2
echo "Finished, don't forget to exit when running root shell ..."
