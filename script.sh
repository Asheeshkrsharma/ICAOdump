curl https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat > airports.txt
awk -F "\"*,\"*" '{ORS=""; print "\x22"$2"\x22",$7,$8,$9 * 0.3048 > $6}' OFMT="%.4f" airports.txt
rm -rf airports.txt