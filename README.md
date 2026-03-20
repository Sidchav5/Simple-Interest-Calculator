# Simple Interest Calculator

A simple bash script to calculate simple interest based on principal amount, rate of interest, and time period.

## Formula

---

## How to Fork This Repository & Complete the Course Lab (Part 2 – Git CLI)

This section walks you through **forking a repository**, creating the required branches, merging them, and opening a pull request — all the steps needed for the Git CLI portion of the course lab.

The example upstream repository used in this course lab is:
> **https://github.com/asmita-27/Dynamic-Maze-Solver**
>
> *(Replace `asmita-27/Dynamic-Maze-Solver` with the actual upstream repository specified by your instructor if it differs.)*

---

### Option A – Fork via the GitHub UI

1. Open the upstream repository in your browser:
   [https://github.com/asmita-27/Dynamic-Maze-Solver](https://github.com/asmita-27/Dynamic-Maze-Solver)
2. Click the **Fork** button in the top-right corner of the page.
3. Select your GitHub account as the destination.
4. GitHub creates a copy at `https://github.com/<your-username>/Dynamic-Maze-Solver`.
5. Clone your new fork locally:
   ```bash
   git clone https://github.com/<your-username>/Dynamic-Maze-Solver.git
   cd Dynamic-Maze-Solver
   ```

---

### Option B – Fork via the Git CLI

```bash
# 1. Clone the upstream repo directly
git clone https://github.com/asmita-27/Dynamic-Maze-Solver.git
cd Dynamic-Maze-Solver

# 2. Add your own GitHub repo as the new "origin"
#    (first create an empty repo on GitHub named Dynamic-Maze-Solver, then:)
git remote rename origin upstream
git remote add origin https://github.com/<your-username>/Dynamic-Maze-Solver.git

# 3. Push all branches to your fork
git push -u origin main
```

---

### Creating the Required Branches and PR

After forking and cloning, follow these steps to complete Tasks 2–4 of the Git CLI lab:

#### Step 1 – Create and merge `bug-fix-typo` into `main`

```bash
# Create the branch
git checkout -b bug-fix-typo

# Edit README.md to fix a typo — open the file in an editor and change any word,
# for example change "Simple" to "Simple " (add a space) or fix actual typos you spot.

# Stage and commit the change
git add README.md
git commit -m "fix: correct typo in README"

# Push the branch to your fork
git push origin bug-fix-typo

# Switch back to main and merge (take a screenshot of this step)
git checkout main
git merge bug-fix-typo
git push origin main
```

> **Screenshot tip (Task 2):** After the merge run `git log --oneline --graph` while on `main` to capture evidence of the merge, or use the GitHub UI merge view.

#### Step 2 – Create `bug-fix-revert` and open a Pull Request

```bash
# Create the branch from main
git checkout -b bug-fix-revert

# Make a change (e.g., revert the previous edit or add a note)
echo "Revert note" >> README.md
git add README.md
git commit -m "revert: undo previous change"

# Push the branch
git push origin bug-fix-revert
```

Then on GitHub:
1. Navigate to your fork's repository page.
2. Click **"Compare & pull request"** next to the `bug-fix-revert` branch.
3. Set the **base branch** to `main` and click **"Create pull request"**.
4. Copy the PR URL (e.g. `https://github.com/<your-username>/Dynamic-Maze-Solver/pull/1`) — this is the URL to submit for **Part 2 Task 3** (Pull Request URL) of the course lab.

#### Step 3 – Verify the Branches page

Navigate to `https://github.com/<your-username>/Dynamic-Maze-Solver/branches`.
It should display **three branches**: `main`, `bug-fix-typo`, and `bug-fix-revert` with their statuses — this is your **Task 4** submission URL.

---
