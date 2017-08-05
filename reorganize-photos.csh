#!/bin/tcsh
if ($# < 1) then
	echo "Usage:"
	echo "   $0 <dirname>"
	exit 1
endif

set d=$1
foreach f (`find $d -type f`)
	set newdir=`echo $f | sed -r 's/^.*\/([0-9]{4,4})\/([0-9]{2,2})\/([0-9]{2,2})(\/[^\/]+)$/\1-\2-\3/' | tr 'A-Z' 'a-z'`
	set newname=`basename $f | tr 'A-Z' 'a-z'`

	if ($f != $newdir && $f != $d/$newdir/$newname) then
		echo $f $d/$newdir/$newname
		mkdir -p $d/$newdir
		mv -f $f $d/$newdir/$newname
	endif
end

find $d -type d -empty -delete

