---
description: How to programmatically create a GitHub Pull Request using the CLI
---
# Programmatically Create a Pull Request

This workflow uses the GitHub CLI (`gh`) to programmatically create a PR.

## Prerequisites
- **GitHub CLI** (`gh`) must be installed.
  ```bash
  brew install gh
  ```
- You must be authenticated.
  ```bash
  gh auth login
  ```

## Steps

1. **Create and switch to a new branch**
   ```bash
   git checkout -b feature/my-feature-name
   ```

2. **Stage and commit your changes**
   ```bash
   git add .
   git commit -m "feat: description of changes"
   ```

3. **Push the branch and create the PR**
   You can do this in one step using `gh`:
   ```bash
   gh pr create --title "feat: my new feature" --body "Description of the changes." --web
   ```
   
   - `--title`: Sets the PR title.
   - `--body`: Sets the description.
   - `--web`: Opens the PR in the web browser after creation (optional).
   - `--fill`: Auto-fills title and body from the commit message (useful alternative).

## Example Script
You can automate this in a script:
```bash
#!/bin/bash
BRANCH_NAME="feature/bitwise-operators"
COMMIT_MSG="feat: add bitwise operators (&, |, ^)"

git checkout -b "$BRANCH_NAME"
git add .
git commit -m "$COMMIT_MSG"
git push -u origin "$BRANCH_NAME"
gh pr create --fill
```
