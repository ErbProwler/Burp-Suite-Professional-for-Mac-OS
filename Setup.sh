#!/bin/bash
echo " Kostonhimoinen "
if [[ $EUID -eq 0 ]]; then
    echo "Installation is starting, you dont need to do anything"
    echo 'Burp Suite Professional downloading "~ Kostonhimoinen"'
    Link="https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.8.2&type=jar"
    wget "$Link" -O Burp_Suite_Pro.jar --quiet --show-progress
    echo 'Keygenerator Starting "~ Kostonhimoinen"'
    (java -jar keygen.jar) &
    echo 'Almost Done "~ Kostonhimoinen"'
    echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:$(pwd)/loader.jar -noverify -jar $(pwd)/Burp_Suite_Pro.jar &" > data
    chmod +x data
    sudo cp data /usr/local/bin/burp  
    (./data)
else
    echo "Please Run Command As Root User'~ Kostonhimoinen'"
    exit
fi
