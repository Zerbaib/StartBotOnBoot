#!/bin/bash

# Fonction pour vérifier si une session screen existe
session_exists() {
    local session_name=$1
    screen -ls | grep -q "$session_name"
}

# Fonction pour lancer un bot dans une session screen
start_bot() {
    local session_name=$1
    local working_dir=$2
    local python_script=$3

    if ! session_exists "$session_name"; then
        screen -dmS "$session_name" bash -c "cd $working_dir && python $python_script"
        sleep 1
        screen -S "$session_name" -X stuff $'\n'
        echo "Bot $session_name started successfully."
    else
        echo "Bot $session_name is already running. Skipping..."
    fi
}

# Lancer chaque bot dans une session screen unique
start_bot "BetaZerbaibBot" "/home/pi/zerbaib/" "bzb.py"
start_bot "StatusBot" "/home/pi/zerbaib/StatusDiscordBot" "main.py"
start_bot "TicketBot" "/home/pi/zerbaib/TicketDiscordBot" "main.py"
start_bot "ZerbaibBot" "/home/pi/zerbaib/ZerbaibDiscordBot" "main.py"
start_bot "Shelly" "/home/pi/anito/bot" "shelly.py"
start_bot "CCrapper" "/home/pi/anito/" "ccraper.py"
start_bot "Nexus" "/home/pi/nexus/" "main.py"
