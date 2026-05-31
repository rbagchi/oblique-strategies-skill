# Oblique Strategies

Random creative prompts from Brian Eno & Peter Schmidt's Oblique Strategies decks.

## Usage

```bash
./scripts/oblique.sh
```

Works standalone — 30 embedded strategies are included. If `uv` is available, it fetches fresh ones from PyPI.

---

## Install in Agents

Uses the **SKILL.md** format from the [Agent Skills](https://agentskills.io) standard.

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

---

### OpenAI Codex

```bash
mkdir -p ~/.agents/skills/oblique-strategies
cp SKILL.md scripts/oblique.sh ~/.agents/skills/oblique-strategies/
```

---

### Google Gemini

Reference the script in your prompts.

---

## How It Works

The script tries `uv` + the `oblique` package first. If that fails (no `uv`, no network), it falls back to 30 embedded strategies — so it always works.

---

## Requirements

- Optional: `uv` (for fresh strategies) — `pip install uv`
- Optional: `oblique` package (auto-installed by uv)