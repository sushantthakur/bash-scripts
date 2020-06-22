awk 'BEGIN{print This is the Start ;i=0;} /7|2/ {print ;i++} END {print THis is the end, i}' num.txt
