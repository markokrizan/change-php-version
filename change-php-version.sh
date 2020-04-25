#!/bin/bash

read -p "Change commandline PHP version to: " version

FILE_PHP="/usr/bin/php${version}"
FILE_PHAR="/usr/bin/phar${version}"
FILE_PHAR_TOOL="/usr/bin/phar.phar${version}"
FILE_PHP_SIZE="/usr/bin/phpize${version}"
FILE_PHP_CONFIG="/usr/bin/php-config${version}"

if [ ! -e "$FILE_PHP" ]; then 
	echo echo "Version ${version} does not exist!"
	exit 1
fi

sudo update-alternatives --set php "${FILE_PHP}"
sudo update-alternatives --set phar "${FILE_PHAR}"
sudo update-alternatives --set phar.phar "${FILE_PHAR_TOOL}"
sudo update-alternatives --set phpize "${FILE_PHP_SIZE}"
sudo update-alternatives --set php-config "${FILE_PHP_CONFIG}"

php -version
