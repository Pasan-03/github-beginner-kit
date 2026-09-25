---
marp: true
theme: uncover
paginate: true
backgroundColor: #0d1117
color: #c9d1d9
style: |
  section {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
    text-align: left;
    padding: 40px 60px;
  }
  h1, h2, h3 { color: #58a6ff; }
  code { color: #ff7b72; background: #161b22; padding: 2px 6px; border-radius: 4px; }
  pre { background: #161b22; border: 1px solid #30363d; border-radius: 8px; padding: 16px; }
---

# 🚀 Git & GitHub for Beginners
### The Fast-Track Guide to Commits, Branches, Push, Pull & Revert
**Presenter:** Farhad's Developer Kit  
**Target:** Beginners & Aspiring Developers

---

## 🧭 Roadmap for Today
1. **The Mental Model:** Git vs. GitHub
2. **First Steps:** `git init` & Configuration
3. **The Core Cycle:** Status, Add & Commit
4. **Parallel Worlds:** Branching & Merging
5. **Connecting to Cloud:** Push & Pull with GitHub
6. **Time Travel Safety Net:** How to `git revert`
7. **Hands-On Live Lab**

---

## 1. Git vs. GitHub
*They are NOT the same thing!*

- **Git:**
  - A local version control software on your laptop
  - Works 100% offline
  - Takes snapshots of your code history

- **GitHub:**
  - A cloud web platform for hosting Git repositories
  - Social network for developers, Pull Requests, Issues, Actions

> **Analogy:** Git is the camera 📷; GitHub is Instagram 📱.

---

## 2. The 3 Local Zones of Git

```
 [ Working Directory ]
          │  git add
          ▼
    [ Staging Area ]
          │  git commit
          ▼
   [ Git Repository ]
```

1. **Working Directory:** Where you type and edit files.
2. **Staging Area:** The photo booth where you stage files before the snapshot.
3. **Repository:** The permanent album of code snapshots.

---

## 3. Initial Setup

Tell Git who you are before committing:

```bash
# Set your name
git config --global user.name "Your Name"

# Set your GitHub email
git config --global user.email "you@example.com"

# Set default branch to main
git config --global init.defaultBranch main
```

---

## 4. Making Your First Commit

Step-by-step cycle:

```bash
# 1. Initialize repository
git init

# 2. Check current status
git status

# 3. Stage changes
git add index.html       # or git add .

# 4. Commit with descriptive message
git commit -m "feat: initial commit with landing page"
```

---

## 5. Branching: Work Without Fear

Why branch?
- Isolate experimental features
- Keep production `main` branch always working
- Work in parallel with team members

```bash
# Create and jump to a new branch
git switch -c feature/new-navbar

# Work, edit files, then commit:
git add .
git commit -m "feat: add sticky navigation bar"

# Switch back to main
git switch main
```

---

## 6. Merging Branches

Bring finished features back into your main line:

```bash
# 1. Ensure you are on the target branch
git switch main

# 2. Merge your feature branch
git merge feature/new-navbar

# 3. Delete feature branch (optional housekeeping)
git branch -d feature/new-navbar
```

---

## 7. Connecting to GitHub: Push & Pull

Link your local project to a GitHub repository:

```bash
# Add remote link
git remote add origin https://github.com/USER/REPO.git

# Push local commits to GitHub (first time)
git push -u origin main

# Subsequent pushes
git push

# Download team updates
git pull origin main
```

---

## 8. Undoing Mistakes: The Power of Revert

Accidentally broke production? Don't panic!

```bash
# View recent commits
git log --oneline -n 5

# Safely invert and cancel the bad commit
git revert <commit-hash> --no-edit

# Push the fix to GitHub
git push
```

**Why `git revert` is best:**
- Never destroys history
- Completely safe on public/shared branches
- Clearly documents the rollback for teammates

---

## 9. Golden Rules for Git Beginners

1. **Commit frequently:** Small, focused commits are easy to understand and revert.
2. **Write clear messages:** Use `feat:`, `fix:`, `docs:`.
3. **Pull before you push:** Keep your local repo updated with remote changes.
4. **Never force push (`git push --force`)** on shared branches.
5. **Use `.gitignore`:** Keep passwords, `.env`, and `node_modules` out of Git!

---

## 10. Let's Practice!

Open the `practice-labs/` folder in this repo:
- `lab-1-commits.md`
- `lab-2-branching.md`
- `lab-3-push-pull.md`
- `lab-4-revert-undo.md`

Run `./practice-sandbox.sh` to begin! 🚀
