#!/bin/bash
mkdir -p  ~/ds/camflow/30-04-2024/base
mkdir -p  ~/ds/camflow/30-04-2024/stream
number=0 ; while [ $number -le 9 ] ; do \
    python prepare.py -i ~/ds/camflow/30-04-2024/split/00$number -o preprocessed.txt ; \
    python parse.py -i preprocessed$number.txt -B ~/ds/camflow/30-04-2024/base/base-$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$number.txt ; \
    rm preprocessed$number.txt ; \
    ((number++))
done 
number=10 ; while [ $number -le 99 ] ; do \
    python prepare.py -i ~/ds/camflow/30-04-2024/split/0$number -o preprocessed.txt ; \
    python parse.py -i preprocessed.txt -B ~/ds/camflow/30-04-2024/base/base-$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$number.txt ; \
    rm preprocessed.txt ; \
    ((number++))
done 
number=100 ; while [ $number -le 150 ] ; do \
    python prepare.py -i ~/ds/camflow/30-04-2024/split/$number -o preprocessed.txt ; \
    python parse.py -i preprocessed.txt -B ~/ds/camflow/30-04-2024/base/base-$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$number.txt ; \
    rm preprocessed.txt ; \
    ((number++))
done 