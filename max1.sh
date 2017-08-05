#!/bin/bash
awk 'BEGIN {x=$1} {if (x<$1) x=$1} END {print x}'
