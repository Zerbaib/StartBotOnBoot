#!/bin/bash

screen -dmS BetaZerbaibBot bash -c "cd /home/pi/zerbaib/ && python bzb.py"
screen -dmS StatusBot bash -c "cd /home/pi/zerbaib/StatusBot && python main.py"
screen -dmS TicketBot bash -c "cd /home/pi/zerbaib/TicketDiscordBot && python main.py"
screen -dmS ZerbaibBot bash -c "cd /home/pi/zerbaib/ZerbaibDiscordBot && python main.py"
screen -dmS Shelly bash -c "cd /home/pi/anito/bot && python shelly.py"
screen -dmS CCrapper bash -c "cd /home/pi/anito/ && python ccraper.py"
screen -dmS Nexus bash -c "cd /home/pi/nexus/ && python main.py"