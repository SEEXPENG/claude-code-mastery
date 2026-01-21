#!/bin/bash

# Claude Code Mastery - Progress Dashboard
# Track your journey through the skill levels

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
NC='\033[0m'

# Progress file
PROGRESS_FILE="$HOME/.claude-code-mastery-progress"

# Initialize progress file if it doesn't exist
init_progress() {
    if [ ! -f "$PROGRESS_FILE" ]; then
        cat > "$PROGRESS_FILE" << 'EOF'
# Claude Code Mastery Progress
# Edit this file to track your completed projects!

# Beginner Projects
beginner_downloads_cleanup=false
beginner_duplicate_finder=false
beginner_photo_organizer=false

# Intermediate Projects
intermediate_todo_auditor=false
intermediate_dependency_checker=false
intermediate_code_analyzer=false

# Advanced Projects
advanced_api_boilerplate=false
advanced_cicd_setup=false
advanced_fullstack_app=false

# Expert Projects
expert_legacy_modernization=false
expert_type_migration=false
expert_module_extraction=false

# Master Projects
master_system_design=false
master_performance_optimization=false
master_open_source_contribution=false

# Current Level (beginner/intermediate/advanced/expert/master)
current_level=beginner
EOF
    fi
}

# Read progress from file
read_progress() {
    source "$PROGRESS_FILE"
}

# Count completed projects at each level
count_completed() {
    local level=$1
    local count=0

    case $level in
        beginner)
            [ "$beginner_downloads_cleanup" = "true" ] && ((count++))
            [ "$beginner_duplicate_finder" = "true" ] && ((count++))
            [ "$beginner_photo_organizer" = "true" ] && ((count++))
            ;;
        intermediate)
            [ "$intermediate_todo_auditor" = "true" ] && ((count++))
            [ "$intermediate_dependency_checker" = "true" ] && ((count++))
            [ "$intermediate_code_analyzer" = "true" ] && ((count++))
            ;;
        advanced)
            [ "$advanced_api_boilerplate" = "true" ] && ((count++))
            [ "$advanced_cicd_setup" = "true" ] && ((count++))
            [ "$advanced_fullstack_app" = "true" ] && ((count++))
            ;;
        expert)
            [ "$expert_legacy_modernization" = "true" ] && ((count++))
            [ "$expert_type_migration" = "true" ] && ((count++))
            [ "$expert_module_extraction" = "true" ] && ((count++))
            ;;
        master)
            [ "$master_system_design" = "true" ] && ((count++))
            [ "$master_performance_optimization" = "true" ] && ((count++))
            [ "$master_open_source_contribution" = "true" ] && ((count++))
            ;;
    esac

    echo $count
}

# Draw a skill tree branch
draw_branch() {
    local level=$1
    local icon=$2
    local name=$3
    local color=$4
    local completed=$(count_completed $level)
    local is_current=false

    [ "$current_level" = "$level" ] && is_current=true

    # Level header
    if $is_current; then
        echo -e "     ${color}${BOLD}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NC}"
        echo -e "     ${color}${BOLD}┃ ${icon} ${name} (CURRENT)                  ┃${NC}"
        echo -e "     ${color}${BOLD}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NC}"
    else
        echo -e "     ${color}┌─────────────────────────────────────────┐${NC}"
        echo -e "     ${color}│ ${icon} ${name}                             │${NC}"
        echo -e "     ${color}└─────────────────────────────────────────┘${NC}"
    fi

    # Progress bar
    local bar=""
    for ((i=0; i<completed; i++)); do
        bar="${bar}████"
    done
    for ((i=completed; i<3; i++)); do
        bar="${bar}░░░░"
    done

    echo -e "     ${DIM}Progress:${NC} [${color}${bar}${NC}] ${completed}/3 projects"
    echo ""
}

# Main display
clear

echo -e "${CYAN}"
cat << "EOF"
╔═══════════════════════════════════════════════════════════════╗
║                                                               ║
║   ██████╗ ██████╗  ██████╗  ██████╗ ██████╗ ███████╗███████╗  ║
║   ██╔══██╗██╔══██╗██╔═══██╗██╔════╝ ██╔══██╗██╔════╝██╔════╝  ║
║   ██████╔╝██████╔╝██║   ██║██║  ███╗██████╔╝█████╗  ███████╗  ║
║   ██╔═══╝ ██╔══██╗██║   ██║██║   ██║██╔══██╗██╔══╝  ╚════██║  ║
║   ██║     ██║  ██║╚██████╔╝╚██████╔╝██║  ██║███████╗███████║  ║
║   ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝  ║
║                                                               ║
║                  CLAUDE CODE MASTERY                          ║
╚═══════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

init_progress
read_progress

# Calculate total progress
total_completed=$(($(count_completed beginner) + $(count_completed intermediate) + $(count_completed advanced) + $(count_completed expert) + $(count_completed master)))

echo -e "  ${WHITE}${BOLD}Your Journey${NC}"
echo -e "  ${DIM}Total Progress: ${total_completed}/15 projects completed${NC}"
echo ""

# Overall progress bar
overall_bar=""
for ((i=0; i<total_completed; i++)); do
    overall_bar="${overall_bar}▓"
done
for ((i=total_completed; i<15; i++)); do
    overall_bar="${overall_bar}░"
done
echo -e "  [${CYAN}${overall_bar}${NC}]"
echo ""
echo -e "${WHITE}${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Skill Tree
echo -e "  ${WHITE}${BOLD}SKILL TREE${NC}"
echo ""
echo -e "     ${DIM}│${NC}"

draw_branch "beginner" "🌱" "BEGINNER    " "${GREEN}"
echo -e "     ${DIM}│${NC}"
echo -e "     ${DIM}▼${NC}"

draw_branch "intermediate" "🚀" "INTERMEDIATE" "${BLUE}"
echo -e "     ${DIM}│${NC}"
echo -e "     ${DIM}▼${NC}"

draw_branch "advanced" "⚡" "ADVANCED    " "${YELLOW}"
echo -e "     ${DIM}│${NC}"
echo -e "     ${DIM}▼${NC}"

draw_branch "expert" "🔥" "EXPERT      " "${MAGENTA}"
echo -e "     ${DIM}│${NC}"
echo -e "     ${DIM}▼${NC}"

draw_branch "master" "⭐" "MASTER      " "${CYAN}"

echo -e "${WHITE}${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${YELLOW}${BOLD}To update your progress:${NC}"
echo -e "  ${DIM}Edit the file:${NC} ${WHITE}~/.claude-code-mastery-progress${NC}"
echo ""
echo -e "  ${DIM}Set completed projects to 'true' and update current_level${NC}"
echo ""
echo -e "${WHITE}${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Achievement badges
echo -e "  ${WHITE}${BOLD}ACHIEVEMENTS${NC}"
echo ""

if [ $total_completed -eq 0 ]; then
    echo -e "  ${DIM}🔒 Complete your first project to unlock achievements!${NC}"
elif [ $total_completed -ge 1 ]; then
    echo -e "  ${GREEN}✓${NC} 🎯 First Steps - Completed first project"
fi

if [ $total_completed -ge 3 ]; then
    echo -e "  ${GREEN}✓${NC} 🌟 Getting Started - Completed beginner level"
fi

if [ $total_completed -ge 6 ]; then
    echo -e "  ${GREEN}✓${NC} 🚀 Lift Off - Completed intermediate level"
fi

if [ $total_completed -ge 9 ]; then
    echo -e "  ${GREEN}✓${NC} ⚡ Power User - Completed advanced level"
fi

if [ $total_completed -ge 12 ]; then
    echo -e "  ${GREEN}✓${NC} 🔥 Expert Mode - Completed expert level"
fi

if [ $total_completed -ge 15 ]; then
    echo -e "  ${CYAN}${BOLD}✓${NC} ${CYAN}⭐ MASTERY ACHIEVED - All projects complete!${NC}"
fi

echo ""
