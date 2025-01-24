#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
function get_file_count() {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire actuel
file_count=$(get_file_count)

# Boucle de jeu
while true; do
    # Demander à l'utilisateur de deviner
    echo "Devinez combien de fichiers sont dans le répertoire actuel :"
    read guess

    # Vérifier si la supposition est correcte
    if [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
        break
    fi
done
