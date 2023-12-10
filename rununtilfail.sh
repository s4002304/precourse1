#!/bin/bash
count=0
fail=0
while [ $fail -eq 0 ]
do
    count=$((count+1))
    OUTPUT=`"./randomfail.sh"`
    echo $OUTPUT
    if [ "$OUTPUT" == "Something went wrong" ]
    then
        fail=1
        echo "$count times run until failure"
    fi
done
