#!/bin/bash
# Function to find the second smallest element in an array
find_second_smallest() {
    array=("$@")
    smallest=${array[0]}
    second_smallest=${array[1]}
    for num in "${array[@]}"
    do
        if [ $num -lt $smallest ]; then
            second_smallest=$smallest
            smallest=$num
        elif [ $num -lt $second_smallest ] && [ $num -ne $smallest ]; then
            second_smallest=$num
        fi
    done
    echo "The second smallest element in the array is: $second_smallest"
}
# Main program
numbers=(5 8 2 9 3 7)
find_second_smallest "${numbers[@]}"
