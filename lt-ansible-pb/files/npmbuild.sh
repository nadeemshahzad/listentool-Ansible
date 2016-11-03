BUILD_DIR="/var/www/listentool/frontend/"
cd $BUILD_DIR
npm install --python=python2.7
npm install  bower
bower install
npm install -g gulp
gulp build
