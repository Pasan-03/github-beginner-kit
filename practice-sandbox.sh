#!/usr/bin/env bash
# Git & GitHub Interactive Learning Sandbox
# Run: ./practice-sandbox.sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

BOLD="\033[1m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
YELLOW="\033[0;33m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

clear
echo -e "${BLUE}${BOLD}"
echo "=========================================================="
echo "    🚀 Git & GitHub Beginner's Interactive Sandbox       "
echo "=========================================================="
echo -e "${RESET}"
echo "Welcome! This tool will help you practice Git commands hands-on."
echo ""

show_menu() {
  echo -e "${BOLD}Select an action to practice:${RESET}"
  echo -e "  ${CYAN}[1]${RESET} Check Repository Status (git status explained)"
  echo -e "  ${CYAN}[2]${RESET} View Visual Commit Tree (git log --graph)"
  echo -e "  ${CYAN}[3]${RESET} Practice Making a Commit (Edit -> Add -> Commit)"
  echo -e "  ${CYAN}[4]${RESET} Practice Branching & Switching (git switch -c)"
  echo -e "  ${CYAN}[5]${RESET} Practice Reverting a Commit (Safe git revert)"
  echo -e "  ${CYAN}[6]${RESET} 🖥️  Open Interactive Slides in Browser"
  echo -e "  ${CYAN}[7]${RESET} 📖 Open Guidebook in Browser"
  echo -e "  ${CYAN}[8]${RESET} Exit"
  echo ""
  echo -n -e "${BOLD}Enter choice [1-8]: ${RESET}"
}

while true; do
  show_menu
  read -r choice
  echo ""

  case "$choice" in
    1)
      echo -e "${YELLOW}Running: git status${RESET}"
      git status
      echo ""
      echo -e "${GREEN}💡 Explanation:${RESET} 'git status' tells you your current branch and whether your working directory has any untracked or modified files waiting to be staged."
      echo "----------------------------------------------------------"
      ;;
    2)
      echo -e "${YELLOW}Running: git log --graph --oneline --decorate --all -n 10${RESET}"
      git log --graph --oneline --decorate --all -n 10
      echo ""
      echo -e "${GREEN}💡 Explanation:${RESET} The asterisk (*) and lines show your commit history and where branches diverge and merge."
      echo "----------------------------------------------------------"
      ;;
    3)
      echo -e "${BOLD}--- Commit Practice ---${RESET}"
      TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
      echo "<!-- Practice update at $TIMESTAMP -->" >> src/index.html
      echo -e "Modified ${CYAN}src/index.html${RESET}."
      echo -e "Running ${YELLOW}git diff src/index.html${RESET}:"
      git diff src/index.html | tail -n 5
      echo ""
      echo -e "Staging file with ${YELLOW}git add src/index.html${RESET}..."
      git add src/index.html
      echo -e "Committing with ${YELLOW}git commit -m 'chore: practice commit at $TIMESTAMP'${RESET}..."
      git commit -m "chore: practice commit at $TIMESTAMP"
      echo ""
      echo -e "${GREEN}✅ Success! New commit added to history.${RESET}"
      git log --oneline -n 1
      echo "----------------------------------------------------------"
      ;;
    4)
      echo -e "${BOLD}--- Branching Practice ---${RESET}"
      BRANCH_NAME="practice/feature-$(date +%s | tail -c 4)"
      echo -e "Creating branch: ${CYAN}$BRANCH_NAME${RESET}"
      git switch -c "$BRANCH_NAME"
      echo -e "Current branches:"
      git branch
      echo ""
      echo -e "Returning to ${CYAN}main${RESET} branch..."
      git switch main
      echo -e "${GREEN}✅ Switched back to main branch.${RESET}"
      echo "----------------------------------------------------------"
      ;;
    5)
      echo -e "${BOLD}--- Revert Practice ---${RESET}"
      echo "// Temporary buggy line" >> src/app.js
      git add src/app.js
      git commit -m "feat: temporary test change to revert"
      BAD_HASH=$(git rev-parse --short HEAD)
      echo -e "Created commit ${RED}$BAD_HASH${RESET}."
      echo -e "Now safely reverting ${YELLOW}$BAD_HASH${RESET} with ${YELLOW}git revert $BAD_HASH --no-edit${RESET}..."
      git revert "$BAD_HASH" --no-edit
      echo -e "${GREEN}✅ Successfully reverted commit $BAD_HASH!${RESET}"
      echo "Notice the new revert commit created in history:"
      git log --oneline -n 2
      echo "----------------------------------------------------------"
      ;;
    6)
      echo -e "${GREEN}Opening slides.html in your default web browser...${RESET}"
      if command -v open >/dev/null 2>&1; then
        open "$DIR/slides.html"
      elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$DIR/slides.html"
      else
        echo "Please open $DIR/slides.html manually in your browser."
      fi
      echo "----------------------------------------------------------"
      ;;
    7)
      echo -e "${GREEN}Opening guidebook.html in your default web browser...${RESET}"
      if command -v open >/dev/null 2>&1; then
        open "$DIR/guidebook.html"
      elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$DIR/guidebook.html"
      else
        echo "Please open $DIR/guidebook.html manually in your browser."
      fi
      echo "----------------------------------------------------------"
      ;;
    8)
      echo -e "${GREEN}Keep up the great work learning Git & GitHub! 👋${RESET}"
      exit 0
      ;;
    *)
      echo -e "${RED}Invalid option. Please enter 1-8.${RESET}"
      ;;
  esac
done
