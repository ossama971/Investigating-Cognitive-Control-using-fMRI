#!/bin/bash
# Define the dimensions of the matrix
num_rows=52
num_cols=26

# Create an empty matrix with all zeros
matrix=()

# Loop through each column
for ((col=0; col<num_cols; col++)); do
    # Create an empty column with all zeros
    column=()

    # Loop through each row
    for ((row=0; row<num_rows; row++)); do
        # If the row is in the specified range for this column, set it to 1
        if ((row >= 2*col + 1 && row <= 2*col + 2)); then
            column+=(1)
        else
            column+=(0)
        fi
    done

    # Add the column to the matrix
    matrix+=("${column[@]}")
done

# Output the matrix to a text file
for ((row=0; row<num_rows; row++)); do
    for ((col=0; col<num_cols; col++)); do
        echo -n "${matrix[$((col*num_rows + row))]} " >> design_matrix.txt
    done
    echo >> design_matrix.txt  # Add newline after each row
done

echo "Design matrix generated: design_matrix.txt"
