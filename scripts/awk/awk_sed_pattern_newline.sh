sed 's/^M//g' pattern.log|awk '{ if ( $0 !~ /\*\*\*/ ) { printf "%s",$0" "} else {print " "}}' >pattern.dat

