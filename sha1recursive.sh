#/bin/bash

workdirectory=$1

if (( $# < 1 ))
then
workdirectory=.
fi

cd $workdirectory

directories=`ls -la | grep ^d.*[^\.]$ | sed -e 's/^\(\([^[:blank:]]*[[:blank:]]\+\)\{8\}\)\(.*\)$/\3/' -e 's/\([[:blank:]]\)/#####@@@@@#####/g'`
files=`ls -la | grep ^- | sed -e 's/^\(\([^[:blank:]]*[[:blank:]]\+\)\{8\}\)\(.*\)$/\3/' -e 's/\([[:blank:]]\)/#####@@@@@#####/g'`

for d in $directories
do
  currentdir=`echo $d | sed 's/#####@@@@@#####/\\ /g'`
  $0 "`pwd`"/"$currentdir"
done

for f in $files
do
  currentfile=`echo $f | sed 's/#####@@@@@#####/\\ /g'`
  sha1sum "`pwd`"/"$currentfile"
done

