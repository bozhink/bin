#!/bin/tcsh

set subdirs=`ls -la "$1" | grep ^d | awk '{print $9}'`

foreach subdirectory ($subdirs)
	if ( ($subdirectory != '.') && ($subdirectory != '..') ) then
		$0 $1/$subdirectory
	endif
end

echo ">>> Directory $1"
cd $1
rm *~
rm *.o
rm *.mak*
rm *.aux
rm *.log
rm *.undo
rm *.toc
rm *.a
rm *.exe
rm *.backup
rm Thumbs.db
ls $1
