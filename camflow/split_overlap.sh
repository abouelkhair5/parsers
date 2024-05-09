#!/bin/bash
cd ~/ds/camflow/30-04-2024
mkdir -p split
mkdir -p overlap
split --number=l/100 -d raw/audit.json split/
number=0; while [ $number -le 9 ] ; do \
    mv split/0$number split/$number
    ((number++))
done
number=0 ; while [ $number -le 96 ] ; do \
    echo $number
    cat split/$number >> overlap/$number
    cat split/$(expr $number + 1) >> overlap/$number
    cat split/$(expr $number + 2) >> overlap/$number
    cat split/$(expr $number + 3) >> overlap/$number
    rm split/$number
    rm split/$(expr $number + 1)
    rm split/$(expr $number + 2)
    ((number++))
    ((number++))
    ((number++))
done
rm -dr split/