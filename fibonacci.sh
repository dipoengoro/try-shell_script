#!/bin/bash

echo "Input:"
read n

if ! [[ "$n" =~ ^[0-9]+$ && "$n" -gt 0 ]]; then
    echo "Input harus bilangan positif."
    exit 1
fi

fibonacci() {
    local num=$1
    if [ $num -eq 0 ]; then
        echo 0
    elif [ $num -eq 1 ]; then
        echo 1
    else
        local a=0
        local b=1
        for ((i = 2; i <= num; i++)); do
            local next=$((a + b))
            a=$b
            b=$next
        done
        echo $b
    fi
}

echo "Fibonacci dari $n adalah"
for ((i = 0; i < n; i++)); do
    echo -n "$(fibonacci $i) "
done

echo

