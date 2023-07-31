#!/bin/bash

# Fonction pour lancer un bot dans une session screen
start_bot() {
    local session_name=$1
    local working_dir=$2
    local python_script=$3

    screen -dmS "$session_name" bash -c "cd $working_dir && python $python_script"
    sleep 1
    screen -S "$session_name" -X stuff $'\n'
}

# Lancer chaque bot dans une session screen unique
start_bot "BetaZerbaibBot" "/home/pi/zerbaib/" "bzb.py"
start_bot "StatusBot" "/home/pi/zerbaib/StatusDiscordBot" "main.py"
start_bot "TicketBot" "/home/pi/zerbaib/TicketDiscordBot" "main.py"
start_bot "ZerbaibBot" "/home/pi/zerbaib/ZerbaibDiscordBot" "main.py"
start_bot "Shelly" "/home/pi/anito/bot" "shelly.py"
start_bot "CCrapper" "/home/pi/anito/" "ccraper.py"
start_bot "Nexus" "/home/pi/nexus/" "main.py"
