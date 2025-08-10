## Initialize Git in the current folder
git init

## Check the status of changes
git status

## Add a specific file to staging
git add <filename>

## Add all files to staging
git add .

## Commit changes with a message
git commit -m "Commit message"

## Connect local repo to GitHub
git remote add origin https://github.com/<username>/<repo>.git

## Push changes to GitHub (first push with upstream)
git push -u origin main

## Pull the latest changes from GitHub
git pull origin main

## View commit history
git log

## Reset to a specific commit (erases later commits)
git reset --hard <commit_hash>

## Clone a repository
git clone <repo_url>

## Create a new branch and switch to it
git checkout -b <branch_name>

## Delete a branch
git branch -d <branch_name>

## Switch between branches
git checkout <branch_name>

## View all branches
git branch

## View commits on a specific branch
git log <branch_name>

## View commits in a short format
git log <branch_name> --oneline

## Apply a specific commit from one branch to another
git cherry-pick <commit_hash>

## Merge branches
git merge <branch_name>
- Takes the content from another brances and merges it into your cuurent branch
- Keeps the full history of both branches
- Creates a merge commit

## Rebase a branch
git rebase <branch_name>
- Takes commits from your branch and replays tehm on top of another branch
- Makes history linear
- Does not create a merge com its but  rewrites history. 


---------------------------------------------------------

## GitHub Flow (for collaboration)
- Fork → copy someone's repo
- Clone → to your machine
  [ Clone existing repo:
git clone https://github.com/username/repo.git ]

- Branch → create a feature branch
- Commit changes
- Push to GitHub
- Open Pull Request → for review
- Merge into main after approval
