# Oblique Strategies

Random creative prompts from Brian Eno & Peter Schmidt's Oblique Strategies decks.

## Quick Start

```bash
./scripts/oblique.sh
```

Requires: `uv` (install with `pip install uv`) — the script handles missing prereqs gracefully.

---

## Install in Agents

This skill uses the **SKILL.md** format from the open [Agent Skills](https://agentskills.io) standard, supported by Claude, Codex, Opencode, and more.

### Opencode

```bash
mkdir -p ~/.config/opencode/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh ~/.config/opencode/skills/oblique-strategies/
```

Trigger: `/oblique`, "I'm stuck", "need a creative idea"

---

### Claude CLI

```bash
mkdir -p ~/.claude/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh ~/.claude/skills/oblique-strategies/
```

Trigger: `/oblique` or say "I'm stuck" — Claude will auto-invoke based on description.

---

### OpenAI Codex

```bash
mkdir -p ~/.agents/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh ~/.agents/skills/oblique-strategies/
```

Or in your project:

```bash
mkdir -p .agents/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh .agents/skills/oblique-strategies/
```

Trigger: `$oblique` or "I'm stuck"

---

### Google Gemini (CLI)

Add SKILL.md to your project or reference the script directly in prompts.

---

## SKILL.md Format

The skill manifest follows the [Agent Skills](https://agentskills.io) standard:

```yaml
---
name: oblique-strategies
description: Use when the user is stuck, looping, or needs a creative intervention.
---

# Instructions

Run ./oblique.sh and present the result.
```

---

## Requirements

- `uv` — `pip install uv`
- `oblique` package — auto-installed on first run

The script checks for `uv` and fails gracefully with a helpful message if missing.