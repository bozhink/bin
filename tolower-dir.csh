#!/bin/tcsh
if ($# < 1) then
	echo "Usage:"
	echo "   $0 <dirname>"
	exit 1
endif
set d=$1
foreach f (`ls $d`)
	set newname=`echo $f | tr 'A-Z' 'a-z'`
	if ($f != $newname) then
		mv $d/$f $d/$newname
	endif
end

