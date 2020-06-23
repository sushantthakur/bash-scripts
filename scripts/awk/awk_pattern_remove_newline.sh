 awk '{ if ( $0 ~ /\*\*\*/ )  { print " " } else {printf $0}}' marks1.dat
