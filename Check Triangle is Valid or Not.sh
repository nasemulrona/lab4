#!/bin/bash

# Function to check if triangle is valid or not
check_triangle_validity() {
    echo "Enter the lengths of the triangle sides: "
    read side1
    read side2
    read side3
    if ((side1 + side2 > side3)) && ((side1 + side3 > side2)) && ((side2 + side3 > side1)); then
        echo "Triangle is valid."
    else
        echo "Triangle is not valid."
    fi
}

# Main program
check_triangle_validity
