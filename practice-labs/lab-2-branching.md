# Lab 2: Branching & Merging

Branches allow you to work on new features, bug fixes, or experiments safely without breaking the main codebase.

---

### Step 1: List Existing Branches
See all branches in this repository:
```bash
git branch
```
The active branch is marked with an asterisk `*` and highlighted.

---

### Step 2: Create and Switch to a New Feature Branch
Create a branch called `feature/add-profile-badge`:
```bash
git switch -c feature/add-profile-badge
```
*(Alternative older command: `git checkout -b feature/add-profile-badge`)*

Confirm you are on the new branch:
```bash
git branch
```

---

### Step 3: Implement the Feature
Add a new badge element to [src/index.html](../src/index.html) inside the `<header>`:
```html
<p class="author">Created by: <strong>Farhad</strong></p>
```

Add some style in [src/style.css](../src/style.css):
```css
.author {
  font-size: 0.95rem;
  color: var(--accent);
  margin-top: 6px;
}
```

---

### Step 4: Commit on the Feature Branch
Stage and commit your feature:
```bash
git add src/index.html src/style.css
git commit -m "feat: add author attribution badge"
```

---

### Step 5: Switch Back to `main`
Now switch back to your main branch:
```bash
git switch main
```
*(Notice that in your editor, your changes have temporarily vanished from the files! They are safe inside the feature branch).*

---

### Step 6: Merge the Feature Branch into `main`
Merge the completed feature into `main`:
```bash
git merge feature/add-profile-badge
```

---

### Step 7: Clean Up (Delete Branch)
Once merged, you can delete the local branch to keep your workspace neat:
```bash
git branch -d feature/add-profile-badge
```

View the graph log:
```bash
git log --oneline --graph -n 5
```
You have successfully mastered the branching workflow!
