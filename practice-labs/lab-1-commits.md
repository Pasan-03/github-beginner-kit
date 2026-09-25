# Lab 1: Staging and Committing Changes

In this lab, you will learn the core Git workflow: editing a file, checking the status, staging changes, and committing them to your repository history.

---

### Step 1: Check the Status
Before making any changes, always check what Git sees:
```bash
git status
```
*Notice what branch you are on and if the working tree is clean.*

---

### Step 2: Make a Change
Open [src/index.html](../src/index.html) in your editor and modify the greeting heading, for example:
```html
<h1>Welcome to Farhad's Git Playground 🚀</h1>
```

Save the file.

---

### Step 3: Inspect the Difference
Run `git status` again:
```bash
git status
```
You will see `src/index.html` listed in red under **Changes not staged for commit**.

To see exactly what changed line-by-line:
```bash
git diff
```

---

### Step 4: Stage the Change (Prepare for Commit)
Move your changes from the working tree to the staging area (index):
```bash
git add src/index.html
```
*(Or use `git add .` to stage all modified files in the project)*

Verify that it is staged:
```bash
git status
```
Now `src/index.html` appears in green under **Changes to be committed**.

---

### Step 5: Make Your Commit
Store this snapshot permanently with a clear, descriptive message:
```bash
git commit -m "feat: customize playground welcome heading"
```

---

### Step 6: View the History
Confirm that your commit is recorded:
```bash
git log --oneline -n 5
```
Congratulations! You've completed your commit cycle: **Edit ➔ `git status` ➔ `git add` ➔ `git commit`**.
