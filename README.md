# Oblique Strategies

Random creative prompts from Brian Eno & Peter Schmidt's Oblique Strategies decks.

## What It Does

When you say "I'm stuck" or "/oblique", the agent draws a random strategy and explains how it applies:

```
You: I'm stuck on this problem

Agent: Lateral Thinking Prompt: "Remove ambiguities and convert to specifics"

Instruction: Reflect on this perspective and briefly explain how it might apply to the current task or problem.

If I take this literally, I'd need to stop thinking abstractly about "the problem" and instead specify: What exactly is broken? What specific error message? What exact behavior do I expect? This would force me to articulate the concrete issue rather than hiding behind vague frustration.
```

## Install in Agents

Uses **SKILL.md** from the [Agent Skills](https://agentskills.io) standard.

### Opencode

```bash
mkdir -p ~/.config/opencode/skills/oblique-strategies/scripts
cp SKILL.md ~/.config/opencode/skills/oblique-strategies/
cp scripts/oblique.sh ~/.config/opencode/skills/oblique-strategies/scripts/
```

Trigger: `/oblique`, "I'm stuck", "need a creative idea"

---

### Claude CLI

```bash
mkdir -p ~/.claude/skills/oblique-strategies/scripts
cp SKILL.md ~/.claude/skills/oblique-strategies/
cp scripts/oblique.sh ~/.claude/skills/oblique-strategies/scripts/
```

Trigger: `/oblique`, "I'm stuck", "need a creative idea"

---

### OpenAI Codex

```bash
mkdir -p ~/.agents/skills/oblique-strategies/scripts
cp SKILL.md ~/.agents/skills/oblique-strategies/
cp scripts/oblique.sh ~/.agents/skills/oblique-strategies/scripts/
```

Trigger: `$oblique`, "I'm stuck", "need a creative idea"

---

## Requirements

- `uv` — `pip install uv`
- `oblique` package — auto-installed by `uv run --with`
- Network access (for first run)

The script checks for `uv` and fails gracefully with a helpful error if missing.