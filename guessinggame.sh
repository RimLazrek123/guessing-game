get_file_count() {
    echo $(ls -1 | wc -l)
}
correct_count=$(get_file_count)
guessing_game() {
    while true; do
        echo "How many files are in the current directory?"
        read guess
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
        elif [[ "$guess" -lt "$correct_count" ]]; then
            echo "Too low. Try again!"
        elif [[ "$guess" -gt "$correct_count" ]]; then
            echo "Too high. Try again!"
        else
            echo "Congratulations! You guessed the correct number of files: $correct_count"
            break
        fi
    done
}
guessing_game
