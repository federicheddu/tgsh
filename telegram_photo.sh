#!/bin/zsh

# Get date and time
DATE=$(date +"%m-%d-%y")
######################### Colours ############################
BWHT=$(echo -e "\033[1;37m")
BCYN=$(echo -e "\033[1;36m")
BGRN=$(echo -e "\033[1;32m")
STD=$(echo -e "\033[0m") # Clear colour
######################## BOT INFO ############################
BOT_TOKEN="your-bot-token";
NAME="your-name";
CHAT_ID="your-chat-id";

echo " "
echo "${BWHT}Sending message to $NAME${STD}"
echo " "
echo "${BCYN}Message:${STD}"
echo "$1"
echo "${BCYN}File:${STD}"
echo "$2"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendPhoto" -F "chat_id=$CHAT_ID" -F "photo=@$2" -F "caption=$1" > /dev/null

echo " "
echo "${BGRN}Message sent${STD}"
echo " "