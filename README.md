# Shell Script Arithmetic Bug

This repository demonstrates a subtle arithmetic bug in a shell script designed to sum numbers from a file. The script uses a `while` loop and `read` command to iterate through lines in the input file. However, the way it handles newline characters in the input could lead to unexpected results.

## Bug Description

The script incorrectly handles numbers that have trailing whitespace or newline characters. The `tr -d \n` command removes newline characters, but this might not fully address the issue.

## Solution

The solution involves using arithmetic expansion more safely to avoid potential errors from unexpected characters.