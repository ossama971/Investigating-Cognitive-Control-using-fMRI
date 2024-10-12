#!/bin/bash
# Define the dimensions of the matrix
num_rows=26
num_cols=26

# Create an empty matrix with all zeros
matrix=()

# Loop through each row and column
for ((row=0; row<num_rows; row++)); do
    for ((col=0; col<num_cols; col++)); do
        # If it's the diagonal cell, set it to 1, otherwise set to 0
        if ((row == col)); then
            matrix+=(1)
        else
            matrix+=(0)
        fi
    done
done

# Output the matrix to a text file
for ((row=0; row<num_rows; row++)); do
    for ((col=0; col<num_cols; col++)); do
        echo -n "${matrix[$((col*num_rows + row))]} " >> contrast.txt
    done
    echo >> contrast.txt  # Add newline after each row
done

echo "Contrast matrix generated: contrast.txt"