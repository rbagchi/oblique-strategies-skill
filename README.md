# 🎴 Oblique Strategies

> *"The value of the cards was that they were like a compass... they told you where you were, but they didn't tell you how to get to where you wanted to go."* — Brian Eno

This is an [agent-skill](https://github.com/topics/agent-skills) designed to introduce **controlled chaos** into the logical flow of AI agents. It is not a tool; it is a creative intervention.

Derived from the legendary deck by Brian Eno and Peter Schmidt, this skill allows agents to break out of algorithmic loops through lateral thinking and artistic "dilemmas."

## 🎲 The Game

This skill is designed to be a "Creative Provocateur." When you are stuck, or when your agent feels too predictable, call upon the deck. The agent will not just give you a quote; it will interpret a challenge to its own architecture.

### Installation (The Portal)

To invite this presence into your Gemini CLI or Claude Code environment:

1. **Prepare the Space**:
   ```bash
   mkdir -p ~/.gemini/skills/oblique-strategies
   ```
2. **Transfer the Cards**:
   ```bash
   cp SKILL.md scripts/oblique.sh ~/.gemini/skills/oblique-strategies/
   chmod +x ~/.gemini/skills/oblique-strategies/oblique.sh
   ```

## ⚡ How to Play

Invite the agent to think laterally. 

- *"I'm stuck in a loop."*
- *"Give me an oblique strategy."*
- *"We need a perspective shift."*

The agent will then invoke the deck and attempt to reconcile its current "logical" task with a "dilemma" that may contradict its core mandates.

## 🛠 Prerequisites

- **[uv](https://github.com/astral-sh/uv)**: To manifest the dependencies with zero friction.
- **Willingness to be wrong**: This skill may suggest you delete your best code.

---
*Inspired by the original 1975 deck. Powered by the `oblique` Python package.*
