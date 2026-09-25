# 🚀 Git & GitHub Beginner Mastery Kit

A complete, beginner-friendly learning package and hands-on repository designed to teach you **how to commit, branch, push, pull, and revert** with confidence.

---

## 📦 What's Inside This Folder

| Resource | Description | How to Open |
| :--- | :--- | :--- |
| 🖥️ **[slides.html](file:///Users/farhad/projects/idea/github-beginner-kit/slides.html)** | Interactive slide presentation deck with navigation, diagrams, and code snippets | Double-click or open in browser |
| 📑 **[SLIDES.md](file:///Users/farhad/projects/idea/github-beginner-kit/SLIDES.md)** | Presentation slides in clean Markdown format | Open in any markdown viewer |
| 📖 **[GUIDEBOOK.md](file:///Users/farhad/projects/idea/github-beginner-kit/GUIDEBOOK.md)** | Comprehensive handbook covering mental models, concepts, and troubleshooting | View in editor / GitHub |
| 🌐 **[guidebook.html](file:///Users/farhad/projects/idea/github-beginner-kit/guidebook.html)** | Interactive web reader for the handbook with quick search & links | Open in browser |
| 🧪 **[practice-sandbox.sh](file:///Users/farhad/projects/idea/github-beginner-kit/practice-sandbox.sh)** | Interactive command-line practice tool with guided exercises | Run `./practice-sandbox.sh` |
| 🧪 **`practice-labs/`** | 4 step-by-step guided hands-on exercises | See list below |
| 💻 **`src/`** | Sample practice web application to test your commits on | Edit in your code editor |

---

## 🎯 Hands-On Practice Labs

1. **[Lab 1: Staging and Committing](file:///Users/farhad/projects/idea/github-beginner-kit/practice-labs/lab-1-commits.md)**
   - Master `git status`, `git add`, and `git commit -m`
2. **[Lab 2: Branching & Merging](file:///Users/farhad/projects/idea/github-beginner-kit/practice-labs/lab-2-branching.md)**
   - Create parallel universes with `git switch -c` and integrate with `git merge`
3. **[Lab 3: Working with GitHub (Push & Pull)](file:///Users/farhad/projects/idea/github-beginner-kit/practice-labs/lab-3-push-pull.md)**
   - Connect your local machine to GitHub cloud with `git remote`, `git push`, and `git pull`
4. **[Lab 4: Undoing Mistakes & Reverting Commits](file:///Users/farhad/projects/idea/github-beginner-kit/practice-labs/lab-4-revert-undo.md)**
   - Use `git revert` to safely roll back bugs without destroying history

---

## ⚡ Quick Start (30 Seconds)

### 1. Launch the Presentation Deck
In your terminal, run:
```bash
open slides.html
```
*(Or on Linux: `xdg-open slides.html`)*  
Use `←` and `→` arrow keys or `Space` to navigate through the slides. Press `F` for fullscreen!

### 2. Run the Interactive Practice Sandbox
```bash
./practice-sandbox.sh
```
Follow the on-screen menu to simulate commits, branches, and reverts step-by-step!

---

## 🧭 Essential Git Commands Reference

```bash
# 1. Inspect
git status                       # See what's modified or staged
git diff                         # View exact unstaged code differences
git log --oneline --graph --all  # Visual commit history tree

# 2. Stage & Commit
git add <filename>               # Stage one file
git add .                        # Stage all changed files
git commit -m "feat: description"# Snapshot staged changes

# 3. Branching
git branch                       # List local branches
git switch -c feature/new-idea   # Create & switch to new branch
git switch main                  # Switch back to main
git merge feature/new-idea       # Merge branch into current branch
git branch -d feature/new-idea   # Delete branch after merge

# 4. GitHub Remote Sync
git remote add origin <URL>      # Connect to GitHub
git push -u origin main          # Push and track remote branch
git pull                         # Fetch & merge latest commits from GitHub

# 5. Safe Undo
git restore <file>               # Discard unstaged file edits
git revert <commit-hash>         # Safely invert and cancel a commit
```

---

## 🌐 Pushing This Kit to Your GitHub Account

Ready to put this onto your own GitHub profile? Follow these 3 steps:

1. Go to [github.com/new](https://github.com/new) and create a repository called `github-beginner-kit`.
2. Connect your local folder to GitHub:
   ```bash
   git remote add origin https://github.com/<YOUR-USERNAME>/github-beginner-kit.git
   ```
3. Push everything to GitHub:
   ```bash
   git branch -M main
   git push -u origin main
   ```
