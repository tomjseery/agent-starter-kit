# Agent Starter Kit

Portable personal agent setup for Tommy's machines.

This repo is for global `.agents` content only: skills and future agent-level helpers that should be shared across computers. Project-specific skills stay in their project repos, for example Concertable's skills live in Concertable under `.agents/skills`.

## Install

From this repo root:

```powershell
.\install.ps1
```

The installer copies `.agents\skills` into `%USERPROFILE%\.agents\skills`.

## Update This Repo From The Current Machine

After editing global skills locally:

```powershell
.\update-from-local.ps1
```

Then commit and push the changes.

## Current Global Skills

- `commit-push`
- `last-conversation`
- `prune-worktrees`
- `recents`
- `search`
- `sync`
- `unmerged`
- `worktree`

`pull-main` is intentionally omitted. `sync` covers the useful default branch flow.
