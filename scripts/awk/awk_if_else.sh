awk 'BEGIN {print Start of the Program Header,i=0}{ if ( $2 % 10 == 0 ) { print $2} else {print "Hurrah"}} END { print "End"}' num.txt 
