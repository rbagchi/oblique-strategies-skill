# Oblique Strategies

Random creative prompts from Brian Eno & Peter Schmidt's Oblique Strategies decks.

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

---

### OpenAI Codex

```bash
mkdir -p ~/.agents/skills/oblique-strategies/scripts
cp SKILL.md ~/.agents/skills/oblique-strategies/
cp scripts/oblique.sh ~/.agents/skills/oblique-strategies/scripts/
```

---

## Requirements

- `uv` — `pip install uv`
- `oblique` package — auto-installed by `uv run --with`
- Network access (for first run)

The script checks for `uv` and fails gracefully with a helpful error if missing.