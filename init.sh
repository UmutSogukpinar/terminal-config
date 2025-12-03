#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
RESET='\033[0m'

echo -e "${BLUE}🚀 Starting installation...${RESET}"

# Check if source file exists
if [ ! -f ".aliases" ]; then
    echo -e "${RED}Error: .aliases file not found in the current directory.${RESET}"
    exit 1
fi

# Copy the file to Home directory
cp .aliases ~/.aliases
echo -e "${GREEN}Copied .aliases to ~/.aliases${RESET}"


SHELL_CONFIG=""

if [ -n "$1" ]; then
    # -- Parameter Provided --
    if [ "$1" == "zsh" ]; then
        SHELL_CONFIG="$HOME/.zshrc"
    elif [ "$1" == "bash" ]; then
        SHELL_CONFIG="$HOME/.bashrc"
    else
        echo -e "${RED}❌ Invalid argument. Usage: ./init.sh [zsh|bash]${RESET}"
        exit 1
    fi
    echo -e "${BLUE}ℹ️  Target shell specified manually: $1${RESET}"
else
    # -- No Parameter (Auto Detect) --
    # Default priority: zsh -> bash
    if [ -f "$HOME/.zshrc" ]; then
        SHELL_CONFIG="$HOME/.zshrc"
        echo -e "${BLUE}ℹ️  Auto-detected Zsh configuration.${RESET}"
    elif [ -f "$HOME/.bashrc" ]; then
        SHELL_CONFIG="$HOME/.bashrc"
        echo -e "${BLUE}ℹ️  Auto-detected Bash configuration.${RESET}"
    else
        echo -e "${RED}Could not auto-detect .zshrc or .bashrc.${RESET}"
        echo "Please run with parameter: ./init.sh bash"
        exit 1
    fi
fi

# Check if file exists (create if specific parameter was given but file is missing)
touch "$SHELL_CONFIG"

if grep -q "source ~/.aliases" "$SHELL_CONFIG" || grep -q ". ~/.aliases" "$SHELL_CONFIG"; then
    echo -e "${GREEN}Aliases are already configured in $SHELL_CONFIG${RESET}"
else
    echo "" >> "$SHELL_CONFIG"
    echo "# Custom Terminal Aliases" >> "$SHELL_CONFIG"
    echo "if [ -f ~/.aliases ]; then" >> "$SHELL_CONFIG"
    echo "    . ~/.aliases" >> "$SHELL_CONFIG"
    echo "fi" >> "$SHELL_CONFIG"
    echo -e "${GREEN}Successfully added configuration to $SHELL_CONFIG${RESET}"
fi

echo -e "${BLUE}Installation complete! Please restart your terminal or run:${RESET}"
echo "source $SHELL_CONFIG"