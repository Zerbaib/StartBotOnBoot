#!/bin/bash

# Tableau contenant les noms et les chemins d'accès vers chaque bot
declare -A bot_paths=(
    ["StatusBot"]="/home/pi/zerbaib/StatusDiscordBot"
    ["ZerbaibDiscordBot"]="/home/pi/zerbaib/ZerbaibDiscordBot"
    ["BetaZerbaibDiscordBot"]="/home/pi/zerbaib/"
    ["TicketManager"]="/home/pi/zerbaib/TicketDiscordBot"
    ["Shelly"]="/home/pi/anito/bot"
    ["CCrapper"]="/home/pi/anito"
    ["Nexus"]="/home/pi/nexus"
    # Ajoutez autant de bots que nécessaire en utilisant la structure : ["Nom_du_bot"]="/chemin/vers/le/dossier_du_bot"
)

declare -A bot_main=(
    ["StatusBot"]="main.py"
    ["ZerbaibDiscordBot"]="main.py"
    ["BetaZerbaibDiscordBot"]="bzb.py"
    ["TicketManager"]="main.py"
    ["Shelly"]="shelly.py"
    ["CCrapper"]="ccrapper.py"
    ["Nexus"]="main.py"
    # Ajoutez autant de bots que nécessaire en utilisant la structure : ["Nom_du_bot"]="main.py"
)

# Fonction pour démarrer un bot dans un screen
start_bot() {
    bot_name=$1
    bot_path=${bot_paths["$bot_name"]}
    bot_main=${bot_main["$bot_name"]}
    screen -dmS "$bot_name" bash -c "cd $bot_path && python $bot_main"
}

# Démarrage de chaque bot dans son propre screen
start_bot "StatusBot"
start_bot "ZerbaibDiscordBot"
start_bot "BetaZerbaibDiscordBot"
start_bot "TicketManager"
start_bot "Nexus"
start_bot "Shelly"
start_bot "CCrapper"