# Part 2 (Git CLI) — Submission Guide

This file documents the steps completed and provides the exact URLs to submit for **Part 2** of the
Git and GitHub final project.

---

## How to Complete Part 2 (One-Click Setup)

All the required branches, commits and pull requests can be created automatically using the
GitHub Actions workflow included in this repository.

### Steps

1. **Merge this PR** (if not already merged) so the workflow is on the `main` branch.
2. Go to **Actions** tab: `https://github.com/Sidchav5/Simple-Interest-Calculator/actions`
3. Click **"Setup Part 2 Branches"** workflow on the left.
4. Click **"Run workflow"** → select `main` branch → click the green **"Run workflow"** button.
5. Wait for the workflow to complete (approximately 1–2 minutes).
6. The workflow will automatically:
   - Create the `bug-fix-typo` branch with the README.md fix
   - Merge `bug-fix-typo` into `main`
   - Create the `bug-fix-revert` branch with a revert commit
   - Create a pull request from `bug-fix-revert` → `main` and merge it

---

## What to Submit (After Running the Workflow)

### Part 2 Task 1 — Repository URL (2 pts)

Submit:
```
https://github.com/Sidchav5/Simple-Interest-Calculator
```

### Part 2 Task 2 — Screenshot of the First Merge (2 pts)

Take a screenshot of the merged pull request or the git commit log showing the merge.

**Option A** — GitHub merge commit (recommended):
Go to: `https://github.com/Sidchav5/Simple-Interest-Calculator/commits/main`
The page will show a merge commit: *"Merge branch 'bug-fix-typo' into main"*
Take a screenshot that shows:
- The current branch is `main`
- The merge commit from `bug-fix-typo` is present

**Option B** — Terminal screenshot:
```bash
git checkout main
git pull
git log --oneline --graph
```
The output will show the merge of `bug-fix-typo` into `main`.

### Part 2 Task 3 — Pull Request URL (2 pts)

After the workflow runs, find the PR number at:
`https://github.com/Sidchav5/Simple-Interest-Calculator/pulls?state=closed`

The pull request URL will be:
```
https://github.com/Sidchav5/Simple-Interest-Calculator/pull/<number>
```

Check the Actions workflow summary after it runs — it will display the exact PR URL.

### Part 2 Task 4 — Branches Page URL (2 pts)

Submit:
```
https://github.com/Sidchav5/Simple-Interest-Calculator/branches
```

This page will show all three branches (`main`, `bug-fix-typo`, `bug-fix-revert`) with their
status after the workflow runs.

---

## Manual Steps (Alternative to the Workflow)

If you prefer to run the Git CLI commands manually, here are the exact steps:

```bash
# Clone the repository
git clone https://github.com/Sidchav5/Simple-Interest-Calculator.git
cd Simple-Interest-Calculator

# Step 1: Create and work on bug-fix-typo branch
git checkout -b bug-fix-typo

# Edit README.md to fix the incomplete formula section
# (Add the formula, usage, and example as shown below)

# Commit the fix
git add README.md
git commit -m "Fix typo: complete README.md with formula, usage and example sections"
git push origin bug-fix-typo

# Step 2: Merge bug-fix-typo into main
git checkout main
git merge bug-fix-typo
git push origin main
# (Take a screenshot of this git log output:)
git log --oneline --graph

# Step 3: Create bug-fix-revert branch
git checkout -b bug-fix-revert

# Make a revert-style change
echo "" >> README.md
echo "## Notes" >> README.md
echo "This version reverts experimental changes and restores the stable implementation." >> README.md

git add README.md
git commit -m "Revert: restore stable README documentation"
git push origin bug-fix-revert

# Step 4: Create a Pull Request on GitHub
# Go to: https://github.com/Sidchav5/Simple-Interest-Calculator/compare/main...bug-fix-revert
# Click "Create Pull Request" and then merge it
```

---

## Branch Structure Overview

```
main ──────────────────────────────────────────► (latest)
        \                     ↑ merge            ↑ merge (PR)
         bug-fix-typo ────────┘                  |
                                                  |
         bug-fix-revert ──────────────────────────┘
```

| Branch            | Purpose                                      | Status              |
|-------------------|----------------------------------------------|---------------------|
| `main`            | Primary branch with all changes merged in    | Active              |
| `bug-fix-typo`    | Completed README.md with formula section     | Merged into main    |
| `bug-fix-revert`  | Reverts experimental changes                 | PR merged into main |
