#!/usr/bin/php
<?php
	if (empty($argv[1])) { die ("Usage: $argv[0] <function>\n"); }
	
	$function=$argv[1];
	while ($line=fgets(STDIN))
	{
		$out = $function($line);
		if (!preg_match('/\n\r*$/',$out)) { $out .= "\n"; }
		print $out;
	}
?>

