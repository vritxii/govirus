#!/bin/bash
git clone git://github.com/luarocks/luarocks.git
cd luarocks
sudo apt-get install lua5.3 liblua5.3-dev -y
./configure
#编译安装到/usr/local
sudo make bootstrap
#安装必备驱动
sudo luarocks install luasocket
sudo luarocks install luasql-sqlite3
sudo luarocks install luasql-postgres
sudo luarocks install luasql-mysql
sudo luarocks install luasql-sqlite
sudo luarocks install luasql-odbc
