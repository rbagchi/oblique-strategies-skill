#!/bin/bash
# Fetches a random Oblique Strategy and labels it for agent context.

if ! command -v uv &> /dev/null; then
    echo "Error: 'uv' is not installed. Please install it (e.g., 'pip install uv' or via homebrew) to use this skill." >&2
    exit 1
fi

# uv run --with oblique handles the package installation/caching automatically.
# We redirect stderr to /dev/null to keep the agent context clean of 'Installed...' messages.
STRATEGY=$(uv run --with oblique python -m oblique --count 1 2>/dev/null)

if [ $? -eq 0 ]; then
    echo "Lateral Thinking Prompt: \"$STRATEGY\""
    echo ""
    echo "Instruction: Reflect on this perspective and briefly explain how it might apply to the current task or problem."
else
    echo "Error: Failed to fetch Oblique Strategy. Ensure you have internet access for the first run." >&2
    exit 1
fi
