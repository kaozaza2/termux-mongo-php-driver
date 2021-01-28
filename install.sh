#!/data/data/com.termux/files/usr/bin/bash
mongofile=$PREFIX/lib/php/mongodb.so
if [ -f $mongofile ]; then
    echo "Mongo php driver already installed!"
else
    if ! [ -x "$(command -v php" ]; then
        echo "php not installed."
        echo "please install php by run 'pkg install php' then run this script again!"
    else
        arch=$(dpkg --print-architecture)
        if [ $arch != "aarch64" ]; then
            echo "$arch currently not available.";
        else
            curl -L "https://raw.githubusercontent.com/kaozaza2/termux-mongo-php-driver/main/mongodb.so" -o $mongofile
            echo "extension=mongodb.so" >> $PREFIX/lib/php.ini
            echo "Mongo php driver succeasfully installed!"
        fi
    fi
fi
