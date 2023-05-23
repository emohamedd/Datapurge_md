#!/bin/bash
#By Emohamedd || Mohamed Amine El Gaouej


#Banner
echo -e "\n"
echo -e "		█▀▄ ▄▀█ ▀█▀ ▄▀█ █▀█ █░█ █▀█ █▀▀ █▀▀"
echo -e "		█▄▀ █▀█ ░█░ █▀█ █▀▀ █▄█ █▀▄ █▄█ ██▄"
echo -e "					By "
echo -e "				\033[32mEMMD\033[0m \033[33m[Emohamedd]\033[0m\n"



# Show current disk storage
Store=$(df -h "$HOME" | awk '{if (NR==2) print $4}' | tr 'i' 'B')
echo -e "\033[97m\nYour Current Computer Storage Before Cleaning:\033[32m ╚═★ $Store ★═╝\033[97m \033[0m"

echo -e "\033[33m\n✵✵ Starting the cleanup process. Please wait... ✵✵\n\033[0m"


# Trash
/bin/rm -rf "$HOME"/.Trash/* &>/dev/null

# Giving access rights 
/bin/chmod -R 777 "$HOME"/Library/Caches/Homebrew &>/dev/null
# Delete general caches
/bin/find "$HOME"/Library/Caches/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Caches/ -mindepth 1 -delete &>/dev/null

# Slack Cache
/bin/find "$HOME"/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Slack/Cache/ -mindepth 1 -delete &>/dev/null

# VS Code Cache
/bin/find "$HOME"/Library/Application\ Support/Code/Cache/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Code/CachedData/ -mindepth 1 -delete &>/dev/null

# Discord Cache
/bin/find "$HOME"/Library/Application\ Support/discord/Cache/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/discord/Code\ Cache/js* -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/discord/Crashpad/completed/ -mindepth 1 -delete &>/dev/null

# Chrome Cache
/bin/find "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Service\ Worker/CacheStorage/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Application\ Cache/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Google/Chrome/Default/Application\ Cache/ -mindepth 1 -delete &>/dev/null
/bin/find "$HOME"/Library/Application\ Support/Google/Chrome/Crashpad/completed/ -mindepth 1 -delete &>/dev/null

# .DS_Store files
/bin/find "$HOME"/Desktop -name .DS_Store -delete &>/dev/null

# Tmp files
/bin/rm -rf "$HOME"/Library/Application\ Support/Chromium/Default/File\ System &>/dev/null
/bin/rm -rf "$HOME"/Library/Application\ Support/Chromium/Profile\ [0-9]/File\ System &>/dev/null
/bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/File\ System &>/dev/null
/bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/File\ System &>/dev/null



echo -e "\033[33m\n✵✵ Cleanup process completed. Files and data erased successfully ✵✵\n\033[0m"



echo -e "\033[97m\n Your Current Computer Storage After Cleaning  : \033[32m╚═★ $Store ★═╝\033[97m \033[0m"

echo -e "\n\033[97m\n Follow My GitHub:\033[32m ╚═★ emohamedd ★═╝\033[97m \033[0m""

