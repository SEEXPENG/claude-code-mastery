#!/bin/bash

# Claude Code Mastery - Interactive Skill Assessment
# A fun, visual tool to discover your Claude Code skill level

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m' # No Color

# Score tracking
SCORE=0

# Clear screen and show header
clear

echo -e "${CYAN}"
cat << "EOF"
   _____ _                 _         _____          _
  / ____| |               | |       / ____|        | |
 | |    | | __ _ _   _  __| | ___  | |     ___   __| | ___
 | |    | |/ _` | | | |/ _` |/ _ \ | |    / _ \ / _` |/ _ \
 | |____| | (_| | |_| | (_| |  __/ | |___| (_) | (_| |  __/
  \_____|_|\__,_|\__,_|\__,_|\___|  \_____\___/ \__,_|\___|

     __  __           _
    |  \/  |         | |
    | \  / | __ _ ___| |_ ___ _ __ _   _
    | |\/| |/ _` / __| __/ _ \ '__| | | |
    | |  | | (_| \__ \ ||  __/ |  | |_| |
    |_|  |_|\__,_|___/\__\___|_|   \__, |
                                    __/ |
                                   |___/
EOF
echo -e "${NC}"

echo -e "${WHITE}${BOLD}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${WHITE}${BOLD}║      SKILL ASSESSMENT - Find Your Perfect Starting Point     ║${NC}"
echo -e "${WHITE}${BOLD}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Animated loading
echo -ne "${DIM}Initializing assessment"
for i in {1..3}; do
    sleep 0.3
    echo -ne "."
done
echo -e "${NC}"
echo ""

# Function to display progress bar
show_progress() {
    local current=$1
    local total=$2
    local width=40
    local percent=$((current * 100 / total))
    local filled=$((current * width / total))
    local empty=$((width - filled))

    echo -ne "${CYAN}["
    for ((i=0; i<filled; i++)); do echo -ne "█"; done
    for ((i=0; i<empty; i++)); do echo -ne "░"; done
    echo -e "] ${percent}%${NC}"
}

# Function to ask a question
ask_question() {
    local question="$1"
    local opt1="$2"
    local opt2="$3"
    local opt3="$4"
    local opt4="$5"
    local points1=$6
    local points2=$7
    local points3=$8
    local points4=$9

    echo -e "\n${YELLOW}$question${NC}\n"
    echo -e "  ${WHITE}1)${NC} $opt1"
    echo -e "  ${WHITE}2)${NC} $opt2"
    echo -e "  ${WHITE}3)${NC} $opt3"
    echo -e "  ${WHITE}4)${NC} $opt4"
    echo ""

    while true; do
        echo -ne "${GREEN}Your choice (1-4): ${NC}"
        read -r choice
        case $choice in
            1) SCORE=$((SCORE + points1)); break;;
            2) SCORE=$((SCORE + points2)); break;;
            3) SCORE=$((SCORE + points3)); break;;
            4) SCORE=$((SCORE + points4)); break;;
            *) echo -e "${RED}Please enter 1, 2, 3, or 4${NC}";;
        esac
    done
}

# Questions
echo -e "${MAGENTA}${BOLD}Answer 5 quick questions to find your ideal starting point...${NC}"
echo ""

echo -e "${DIM}Question 1 of 5${NC}"
show_progress 1 5
ask_question "How would you describe your Claude Code experience?" \
    "Never used it before" \
    "Tried it a few times for simple tasks" \
    "Use it regularly for development work" \
    "It's my primary development tool" \
    0 1 2 3

echo -e "${DIM}Question 2 of 5${NC}"
show_progress 2 5
ask_question "When you need to find something in a codebase, you typically:" \
    "Search manually or ask Claude to help" \
    "Know that tools like Grep exist but let Claude decide" \
    "Describe what you're looking for and trust Claude" \
    "State the outcome I need and review Claude's approach" \
    0 1 2 3

echo -e "${DIM}Question 3 of 5${NC}"
show_progress 3 5
ask_question "How do you typically communicate tasks to Claude?" \
    "Step-by-step instructions for each action" \
    "General description with some specific guidance" \
    "State the outcome and let Claude figure out how" \
    "High-level goals with context about constraints" \
    0 1 2 3

echo -e "${DIM}Question 4 of 5${NC}"
show_progress 4 5
ask_question "What's the most complex task you've done with AI assistance?" \
    "Simple file operations or text editing" \
    "Multi-file changes or basic automation" \
    "Building features or setting up projects" \
    "System architecture or major refactoring" \
    0 1 2 3

echo -e "${DIM}Question 5 of 5${NC}"
show_progress 5 5
ask_question "How comfortable are you with Claude making autonomous decisions?" \
    "I prefer to approve each step" \
    "Okay with simple decisions, verify important ones" \
    "Trust Claude for most technical decisions" \
    "Full trust - I focus on reviewing results" \
    0 1 2 3

# Calculate level
echo ""
echo -e "${DIM}Analyzing your responses...${NC}"
sleep 1

# Determine level based on score (0-15 possible)
if [ $SCORE -le 3 ]; then
    LEVEL="BEGINNER"
    ICON="🌱"
    COLOR=$GREEN
    FILE="skills/BEGINNER.md"
    PROJECT="projects/01-file-management/downloads-cleanup/"
    DESCRIPTION="You're ready to start with outcome-driven learning!"
elif [ $SCORE -le 6 ]; then
    LEVEL="INTERMEDIATE"
    ICON="🚀"
    COLOR=$BLUE
    FILE="skills/INTERMEDIATE.md"
    PROJECT="projects/02-code-quality/todo-auditor/"
    DESCRIPTION="You understand the basics - time to level up!"
elif [ $SCORE -le 9 ]; then
    LEVEL="ADVANCED"
    ICON="⚡"
    COLOR=$YELLOW
    FILE="skills/ADVANCED.md"
    PROJECT="projects/03-project-setup/api-boilerplate/"
    DESCRIPTION="You're skilled - let's unlock your full potential!"
elif [ $SCORE -le 12 ]; then
    LEVEL="EXPERT"
    ICON="🔥"
    COLOR=$MAGENTA
    FILE="skills/EXPERT.md"
    PROJECT="projects/04-refactoring/modernize-legacy/"
    DESCRIPTION="Impressive skills - tackle the complex challenges!"
else
    LEVEL="MASTER"
    ICON="⭐"
    COLOR=$CYAN
    FILE="skills/MASTER.md"
    PROJECT="projects/05-automation/deployment-pipeline/"
    DESCRIPTION="You're a Claude Code master - architect solutions!"
fi

# Display results with flair
clear
echo ""
echo -e "${WHITE}${BOLD}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${WHITE}${BOLD}║                    ASSESSMENT COMPLETE!                      ║${NC}"
echo -e "${WHITE}${BOLD}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${COLOR}"
case $LEVEL in
    "BEGINNER")
cat << "EOF"
    ____  ____  _______________   ___   ____________
   / __ )/ __ \/ ____/  _/ | / / | / / / ____/ __ \
  / __  / / / / / /  / //  |/ /  |/ / / __/ / /_/ /
 / /_/ / /_/ / /___/ // /|  / /|  / / /___/ _, _/
/_____/\____/\____/___/_/ |_/_/ |_/ /_____/_/ |_|

EOF
;;
    "INTERMEDIATE")
cat << "EOF"
    _____   ____________  ____  __  _____________  _______  ____________
   /  _/ | / /_  __/ __ \/ __ \/  |/  / ____/ __ \/  _/ _ |/_  __/ ____/
   / //  |/ / / / / /_/ / /_/ / /|_/ / __/ / / / // // /_/|/ / / __/
 _/ // /|  / / / / ____/ _, _/ /  / / /___/ /_/ // / |__  / / / /___
/___/_/ |_/ /_/ /_/   /_/ |_/_/  /_/_____/_____/___/   /_/ /_/_____/

EOF
;;
    "ADVANCED")
cat << "EOF"
    ___    _______    _____    _   __________________
   /   |  / ____/ |  / /   |  / | / / ____/ ____/ __ \
  / /| | / / / | | / / /| | /  |/ / /   / __/ / / / /
 / ___ |/ /___ | |/ / ___ |/ /|  / /___/ /___/ /_/ /
/_/  |_|\____/ |___/_/  |_/_/ |_/\____/_____/_____/

EOF
;;
    "EXPERT")
cat << "EOF"
    _______  ______  __________  ______
   / ____/ |/ / __ \/ ____/ __ \/_  __/
  / __/  |   / /_/ / __/ / /_/ / / /
 / /___ /   / ____/ /___/ _, _/ / /
/_____//_/|_/_/   /_____/_/ |_| /_/

EOF
;;
    "MASTER")
cat << "EOF"
    __  ______   ____________  ____
   /  |/  /   | / ___/_  __/ / __ \
  / /|_/ / /| | \__ \ / /   / /_/ /
 / /  / / ___ |___/ // /   / _, _/
/_/  /_/_/  |_/____//_/   /_/ |_|

EOF
;;
esac
echo -e "${NC}"

echo -e "  ${WHITE}${BOLD}Your Level: ${COLOR}${ICON} ${LEVEL}${NC}"
echo -e "  ${DIM}Score: ${SCORE}/15${NC}"
echo ""
echo -e "  ${WHITE}${DESCRIPTION}${NC}"
echo ""
echo -e "${WHITE}${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${CYAN}${BOLD}Recommended Path:${NC}"
echo -e "  ${WHITE}📖 Read:${NC} ${FILE}"
echo -e "  ${WHITE}🎯 Start:${NC} ${PROJECT}"
echo ""
echo -e "${WHITE}${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${YELLOW}${BOLD}Quick Start Command:${NC}"
echo -e "  ${DIM}Tell Claude:${NC} ${GREEN}\"Open ${FILE} and help me get started\"${NC}"
echo ""
echo -e "${WHITE}${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${MAGENTA}Remember: You describe outcomes. Claude handles everything else.${NC}"
echo ""
