Xvfb -ac :99 -screen 0 2880x1440x16&
mv /dev/random /dev/random.real
ln -s /dev/urandom /dev/random
export DISPLAY=:99
java -Dwebdriver.chrome.driver="/node/config/chromedriver" -jar /node/config/selenium-server-standalone-2.44.0.jar -role node -hubHost ${HUB_PORT_4444_TCP_ADDR} -hubPort ${HUB_PORT_4444_TCP_PORT} -nodeConfig /node/config/node.config


