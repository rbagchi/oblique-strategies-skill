#!/bin/bash
# Fetches a random Oblique Strategy and labels it for agent context.
# Requires: uv (pip install uv)

if ! command -v uv &> /dev/null; then
    echo "Error: 'uv' is not installed. Install with: pip install uv" >&2
    exit 1
fi

STRATEGY=$(uv run --with oblique python -m oblique --count 1 2>/dev/null)

if [ $? -eq 0 ]; then
    echo "Lateral Thinking Prompt: \"$STRATEGY\""
    echo ""
    echo "Instruction: Reflect on this perspective and briefly explain how it might apply to the current task or problem."
else
    echo "Error: Failed to fetch Oblique Strategy. Ensure you have internet access." >&2
    exit 1
fi