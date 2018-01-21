#!/bin/bash
dir=$1
root=$2

echo $0 $dir

for d in `ls -l $root | grep ^d | awk '{ print $9 }'`
do
    echo $root/$d
    for d1 in `ls -l $root/$d | grep ^d | awk '{ print $9 }'`
    do
        echo $root/$d/$d1
        for d2 in `ls -l $root/$d/$d1 | grep ^d | awk '{ print $9 }'`
        do
            name=`echo $d-$d1-$d2`
            echo $name
            mv $root/$d/$d1/$d2 $root/$name
        done
    done
done
