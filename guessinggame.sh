#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main loop to ask for the correct number of files
correct_number=$(count_files)
guess=-1

echo "Welcome to the Guessing Game!"
echo "Try to guess the number of files in the current directory."

# Loop until the user guesses correctly
while [ $guess -ne $correct_number ]
do
  echo "Enter your guess: "
  read guess
  
  if [ $guess -lt $correct_number ]; then
    echo "Your guess is too low."
  elif [ $guess -gt $correct_number ]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed the correct number of files!"
  fi
done
