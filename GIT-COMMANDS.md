# Git Commands to Commit to GitHub

Run these commands in Git Bash, PowerShell, or Command Prompt:

```bash
# Navigate to project folder (if not already there)
cd /c/Users/kohna/Documents/Toolshub

# Check current status
git status

# Stage all files (IMPORTANT: Do this before committing!)
git add .

# Commit your changes (REQUIRED before pushing!)
git commit -m "Initial commit: Add Compound Interest Calculator"

# Verify you have commits
git log --oneline

# Set main branch (if not already on main)
git branch -M main

# Now push to GitHub
git push -u origin main
```

**Note:** The error "src refspec main does not match any" means you haven't made any commits yet. Always commit before pushing!

## If you get authentication errors:

You may need to authenticate with GitHub. Options:

1. **Personal Access Token** (recommended):
   - Go to GitHub Settings > Developer settings > Personal access tokens > Tokens (classic)
   - Generate a new token with `repo` permissions
   - Use the token as your password when pushing

2. **GitHub CLI**:
   - Install GitHub CLI: `winget install GitHub.cli`
   - Run: `gh auth login`

3. **SSH Key**:
   - Set up SSH keys and use SSH URL instead: `git@github.com:Naimin/Toolshub.git`
