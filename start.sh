#!/bin/bash

screen -dmS BetaZerbaibBot bash -c "cd /home/pi/zerbaib/ && python bzb.py"
sleep 1
screen -x BetaZerbaibBot -X stuff $'\n'

screen -dmS StatusBot bash -c "cd /home/pi/zerbaib/StatusBot && python main.py"
sleep 1
screen -x StatusBot -X stuff $'\n'

screen -dmS TicketBot bash -c "cd /home/pi/zerbaib/TicketDiscordBot && python main.py"
sleep 1
screen -x TicketBot -X stuff $'\n'

screen -dmS ZerbaibBot bash -c "cd /home/pi/zerbaib/ZerbaibDiscordBot && python main.py"
sleep 1
screen -x ZerbaibBot -X stuff $'\n'

screen -dmS Shelly bash -c "cd /home/pi/anito/bot && python shelly.py"
sleep 1
screen -x Shelly -X stuff $'\n'

screen -dmS CCrapper bash -c "cd /home/pi/anito/ && python ccraper.py"
sleep 1
screen -x CCrapper -X stuff $'\n'

screen -dmS Nexus bash -c "cd /home/pi/nexus/ && python main.py"
sleep 1
screen -x Nexus -X stuff $'\n'
