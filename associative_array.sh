#!/bin/bash
echo enter names for Janitor from mon-sun \(Total seven names are required\)
read name1 name2 name3 name4 name5 name6 name7

declare -A roster; declare -a order
roster[monday]=$name1; order+=( "monday" )
roster[tuesday]=$name2; order+=( "tuesday" )
roster[wednesday]=$name3; order+=( "wednesday" )
roster[thursday]=$name4; order+=( "thursday" )
roster[friday]=$name5; order+=( "friday" )
roster[saturday]=$name6; order+=( "saturday" )
roster[sunday]=$name7; order+=( "sunday" )

#print the name of responsible janitors for each day
for i in "${order[@]}"
do
	echo "$i" "${roster[$i]}"
done
