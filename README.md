# tgsh
A set of scripts to send messages, photos and files to a telegram chat using the telegram bot API. You don't need to install any library, is all implemented with curl and POST requests.

## Installation
After cloning the repository, with you have to add your telegram bot token to the 3 scripts in the line 11, replacing string
```zsh
BOT_TOKEN="your-bot-token";
```
with your bot token.  
Then you have to add your chat id and name to the 3 scripts in the line 12-13, replacing the lines
```zsh
NAME="your-name";
CHAT_ID="your-chat-id";
```
You can modify the scripts to pass as arguments also the chat id and the name, so you can use the scripts to send messages to different chats, but I usually use this scripts to send messages to myself, so I didn't implement this feature. Fell free to fork the repository and add this feature.

Then you can run the scripts in the following way:
```zsh
zsh <path-to-repo>/tgsh/telegram_message.sh "your message"
or
zsh <path-to-repo>/tgsh/telegram_file.sh "photo caption" "path-to-file"
or
zsh <path-to-repo>/tgsh/telegram_file.sh "photo caption" "path-to-file"
```

The scripts will send a message, a photo or a file to the chat with the chat id you specified.

If you want to use bash instead of zsh, you have to replace the first line of the scripts with
```bash
#!/bin/bash
```
and run the scripts with
```bash
bash <path-to-repo>/tgsh/telegram_message.sh "your message"
or
bash <path-to-repo>/tgsh/telegram_file.sh "photo caption" "path-to-file"
or
bash <path-to-repo>/tgsh/telegram_file.sh "photo caption" "path-to-file"
```

You can also add the scripts to your PATH, so you can run them from anywhere, without specifying the path to the script.
To add the scripts to your PATH, you have to add the following line to your .zprofile or .bashrc file (or any other file that is sourced when you open a terminal):
```zsh
export PATH="/absolute/path/to/tgsh/:$PATH"
```
replacing the path with the path to the tgsh folder.