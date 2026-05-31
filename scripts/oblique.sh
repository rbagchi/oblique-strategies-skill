#!/bin/bash
# Fetches a random Oblique Strategy and labels it for agent context.
# Tries uv + oblique package first, falls back to embedded list.

STRATEGIES=(
    "Remove ambiguities and convert to specifics"
    "Don't stretch the material; examine it in its gross form"
    "What are the real questions most important to you?"
    "Take a break"
    "Work at the wrong scale"
    "Emphasize differences"
    "Emphasize repetitions"
    "Change instrument proportions"
    "Take a break"
    "Trust in the you of now"
    "State the problem as clearly as possible"
    "What would make this really excellent?"
    "Go slowly"
    "Go faster"
    "The tape is now the music"
    "What are you really thinking about just now?"
    "What mistake did you make last time?"
    "Remove specifics and convert to ambiguities"
    "Faced with a choice, do both"
    "Begin anywhere"
    "What wouldn't you do?"
    "Change nothing and continue with immaculate consistency"
    "Intentions -nobility of -humility of -credibility of"
    "Always first steps"
    "Go to an extreme, come part way back"
    "It is the end that matters"
    "What would your closest friend say?"
    "Pretend you've done it before"
    "Start your day with something unfriendly"
    "Don't be frightened to make something"
    "The most important thing is the thing most easily forgotten"
)

pick_random() {
    local n=${#STRATEGIES[@]}
    local i=$((RANDOM % n))
    echo "${STRATEGIES[$i]}"
}

fetch_remote() {
    if command -v uv &> /dev/null; then
        uv run --with oblique python -m oblique --count 1 2>/dev/null
        return $?
    fi
    return 1
}

main() {
    local strategy

    if strategy=$(fetch_remote 2>/dev/null); then
        : # got from remote, use it
    else
        strategy=$(pick_random)
    fi

    echo "Lateral Thinking Prompt: \"$strategy\""
    echo ""
    echo "Instruction: Reflect on this perspective and briefly explain how it might apply to the current task or problem."
}

main