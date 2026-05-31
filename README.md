# Oblique Strategies

Random creative prompts from Brian Eno & Peter Schmidt's Oblique Strategies decks.

## Quick Start

```bash
./scripts/oblique.sh
```

Requires: `uv` (install with `pip install uv`) — the script handles missing prereqs gracefully.

---

## Install in Agents

The `SKILL.md` file is the standard skill manifest. Copy it along with the script:

### Opencode

```bash
mkdir -p ~/.config/opencode/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh ~/.config/opencode/skills/oblique-strategies/
```

Trigger: `/oblique`, "I'm stuck", "need a creative idea"

---

### Claude CLI

Add to your `claude.json`:

```json
{
  "customCommands": {
    "oblique": {
      "description": "Get a creative prompt when stuck",
      "command": "./scripts/oblique.sh"
    }
  }
}
```

Or reference SKILL.md in your project.

---

### OpenAI Codex

Add to your project's AGENTS.md:

```markdown
# Custom Skills
- oblique: ./scripts/oblique.sh
```

Or add SKILL.md to your codebase and reference it.

---

### Google Gemini

Use the script directly in prompts, or convert SKILL.md to a custom tool definition for the Gemini API.

---

## Format: SKILL.md

SKILL.md is a simple markdown-based skill manifest:

```yaml
---
name: oblique-strategies
description: Use when the user is stuck, looping, or needs a creative intervention.
---

# Instructions
Run ./oblique.sh and present the result.
```

This format can be adapted for other agents that support custom skill definitions.

---

## Requirements

- `uv` — `pip install uv`
- `oblique` package — auto-installed on first run

The script checks for `uv` and fails gracefully with a helpful message if missing.