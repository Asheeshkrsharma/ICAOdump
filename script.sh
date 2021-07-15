curl https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat > airports.txt

awk -F "\"*,\"*" '{print $7,$8,$9 > $6}' airports.txt

rm -rf airports.txt