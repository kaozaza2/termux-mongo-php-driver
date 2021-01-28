#!/data/data/com.termux/files/usr/bin/bash
mongofile=$PREFIX/lib/php/mongodb.so
if [ -f "$mongofile" ]; then
    echo -e "Mongo php driver already installed!"
else
    if ! [ -x "$(command -v php)" ]; then
        echo -e "php not installed."
        echo -e "please install php by run 'pkg install php' then run this script again!"
    else
        arch=$(dpkg --print-architecture)
        if [ "$arch" != "aarch64" ]; then
            echo -e "$arch currently not available.";
        else
            curl -L "https://raw.githubusercontent.com/kaozaza2/termux-mongo-php-driver/main/mongodb.so" -o "$mongofile"
            echo "extension=mongodb.so" >> "$PREFIX/lib/php.ini"
            echo -e "Mongo php driver succeasfully installed!"
        fi
    fi
fi
