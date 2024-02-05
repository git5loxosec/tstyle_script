#!/bin/bash

CYAN='\033[0;36m'
WHITE='\033[1;37m'
RED='\033[1;31m'
GRAY_BG='\033[40m'
RESET='\033[0m'

echo -e "${GRAY_BG}"
echo -e "${CYAN}Termux styling script by git5${RESET}"

echo -e "${CYAN}Installing ${WHITE}zsh${RESET} & ${WHITE}git${RESET}"
apt install zsh git

echo -e "${CYAN}Installing ${WHITE}oh-my-zsh${RESET}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "${CYAN}Install ${WHITE}powerlevel10k${RESET}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "${CYAN}Set the ${WHITE}PowerLevel10k${RESET} theme"
set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

echo -e "${CYAN}Install and configure ${WHITE}LSD${RESET}"
apt install lsd

echo -e "${CYAN}Add alias to .zshrc"
echo "alias ls=lsd" >> ~/.zshrc

echo -e "${CYAN}Install ${WHITE}Termux-style${RESET} from the link below"
echo -e "${WHITE}https://f-droid.org/en/packages/com.termux.styling/${RESET}"
read -p "Press Enter to continue..."

echo -e "${CYAN}cd home"
cd $HOME

echo -e "${CYAN}Clone repo"
git clone https://github.com/adi1090x/termux-style

echo -e "${CYAN}Change to ${WHITE}termux-style${RESET} dir -"
cd termux-style

echo -e "${CYAN}Installing..."
./install

echo -e "${RESET}"
