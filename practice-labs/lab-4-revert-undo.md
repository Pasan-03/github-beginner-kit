# Lab 4: Undoing Mistakes & Reverting Commits

Mistakes happen to every developer! Git gives you safety nets to undo mistakes without losing work.

---

### Understanding the 3 Levels of Undoing in Git

| Situation | Command | What It Does |
| :--- | :--- | :--- |
| **Unsaved file changes (not staged)** | `git restore <file>` | Discards edits in your working directory back to last commit. |
| **Unstage a staged file** | `git restore --staged <file>` | Removes file from staging area, but preserves your edits. |
| **Safe undo of a past commit** | `git revert <commit-hash>` | Creates a **new commit** that inverts the changes of the bad commit. Safe for shared/public branches! |
| **Nuclear local undo** | `git reset --hard HEAD~1` | Erases the last commit completely. *Never use this on pushed commits!* |

---

### Hands-on Exercise: Safe Rollback with `git revert`

#### Step 1: Simulate a Bad Commit
Let's intentionally introduce a bug into [src/app.js](../src/app.js):
```javascript
// A bad buggy function that breaks the app
function brokenFeature() {
  throw new Error("System Crash! Accidental bug introduced.");
}
brokenFeature();
```

Commit this bad code:
```bash
git add src/app.js
git commit -m "feat: introduce buggy experimental feature"
```

---

#### Step 2: Identify the Commit Hash
Inspect the log to find the commit hash:
```bash
git log --oneline -n 3
```
You will see output like:
```text
a1b2c3d feat: introduce buggy experimental feature
e4f5g6h feat: add author attribution badge
```
Note the commit hash `a1b2c3d` (or `HEAD`).

---

#### Step 3: Safely Revert the Bad Commit
Run `git revert`:
```bash
git revert HEAD --no-edit
```
*(Or specify the commit hash: `git revert a1b2c3d --no-edit`)*

---

#### Step 4: Verify the History
Check the git log:
```bash
git log --oneline -n 3
```
You will see:
```text
9z8y7x6 Revert "feat: introduce buggy experimental feature"
a1b2c3d feat: introduce buggy experimental feature
```
Notice what happened:
1. The bad commit is still in history (complete audit trail!).
2. A new commit was created that undone the exact lines added by the buggy commit.
3. Open `src/app.js` — the bug is completely gone!
4. Because it's a forward commit, you can safely push it to GitHub without conflicts or force pushes.
