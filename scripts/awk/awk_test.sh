awk 'BEGIN {print "This is the begining";i=0} { if ( i <= 10 && $0 ~ /TEST/ ) {print $0;i++}} END { print "END i";i }' test.dat
