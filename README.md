# Oblique Strategies

Random creative prompts from Brian Eno & Peter Schmidt's Oblique Strategies decks.

## Quick Start

```bash
./scripts/oblique.sh
```

Requires: `uv` (install with `pip install uv`) — the script handles missing prereqs gracefully.

---

## Install in Agents

### Opencode

```bash
mkdir -p ~/.config/opencode/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh ~/.config/opencode/skills/oblique-strategies/
```

Trigger: `/oblique`, "I'm stuck", "need a creative idea"

---

### Claude CLI

Add to your project's `claude.json` or global config:

```json
{
  "customCommands": {
    "oblique": "./scripts/oblique.sh"
  }
}
```

Or run directly: `./scripts/oblique.sh`

---

### OpenAI Codex

Add to your project's AGENTS.md:

```markdown
# Custom Skills
- oblique: ./scripts/oblique.sh
```

Or run directly: `./scripts/oblique.sh`

---

### Google Gemini

Use the script directly in your prompts, or via the Gemini API as a custom tool.

---

## Requirements

- `uv` — `pip install uv`
- `oblique` package — auto-installed on first run

The script checks for `uv` and fails gracefully with a helpful message if missing.