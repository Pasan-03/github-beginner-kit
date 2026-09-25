# Lab 3: Working with GitHub (Push & Pull)

Git is the local version control engine on your machine. GitHub is the cloud platform hosting your repositories so you can collaborate, share, and backup code.

---

### Step 1: Create a New Empty Repository on GitHub
1. Log in to [GitHub](https://github.com).
2. Click the `+` icon in the top-right corner and select **New repository**.
3. Name it: `github-beginner-kit` (or any name you prefer).
4. Leave it Public or Private.
5. **Do NOT** check "Add a README file", ".gitignore", or "license" (we already have our local repo ready!).
6. Click **Create repository**.

---

### Step 2: Connect Local Repo to GitHub
Copy the repository URL from GitHub (HTTPS or SSH). Then run:
```bash
git remote add origin https://github.com/<YOUR-USERNAME>/github-beginner-kit.git
```

Verify that the remote is connected:
```bash
git remote -v
```

---

### Step 3: Push Your Code to GitHub
Push your commits and set the default upstream branch:
```bash
git branch -M main
git push -u origin main
```
*Refresh your GitHub browser page — your entire repository, slides, and code are now live on GitHub!*

---

### Step 4: Pushing Future Updates
Whenever you make new commits:
```bash
git add .
git commit -m "docs: update guidebook notes"
git push
```

---

### Step 5: Pulling Changes from GitHub
If someone else (or you from another computer or the GitHub web editor) made changes on GitHub, download and merge them into your local branch:
```bash
git pull origin main
```
*(Or simply `git pull` once upstream is set).*

---

### Key Takeaways:
- **`git remote add origin <URL>`**: Tells local Git where GitHub is located.
- **`git push`**: Uploads your local commits to GitHub.
- **`git pull`**: Downloads new commits from GitHub and merges them into your local workspace.
