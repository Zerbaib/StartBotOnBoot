#!/bin/bash

screen -dS BetaZerbaibBot bash -c "cd /home/pi/zerbaib/ && python bzb.py"
screen -dS StatusBot bash -c "cd /home/pi/zerbaib/StatusBot && python main.py"
screen -dS TicketBot bash -c "cd /home/pi/zerbaib/TicketDiscordBot && python main.py"
screen -dS ZerbaibBot bash -c "cd /home/pi/zerbaib/ZerbaibDiscordBot && python main.py"
screen -dS Shelly bash -c "cd /home/pi/anito/bot && python shelly.py"
screen -dS CCrapper bash -c "cd /home/pi/anito/ && python ccraper.py"
screen -dS Nexus bash -c "cd /home/pi/nexus/ && python main.py"
