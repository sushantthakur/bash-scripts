# THis is to print row which has sport in the first colum
awk 'BEGIN{print "This program will print the row where we have sports in the first col"} /Sports|Science|TEST/ {print $0}'  marks.dat
