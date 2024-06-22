# Github Workflow Guide

## Initial Setup:
1. Clone the Repository:
   ```bash
   git clone https://github.com/featherfind/working-repo.git
   cd working-repo
   ```

2. Set Up Remote (if not set automatically):
   ```bash
   git remote add origin https://github.com/featherfind/working-repo.git
   ```

## Creating a New Feature:
3. Update Local Repository:
   Make sure your local repository is up-to-date with the latest changes from `main`:
   ```bash
   git checkout main
   git pull origin main
   ```

4. Create a New Feature Branch:
   Create a new branch for your feature from `main`:
   ```bash
   git checkout -b feature/awesome-feature
   ```

5. Work on Your Feature:
   Make your changes and commit them locally:
   ```bash
   git add .
   git commit -m "Implement feature XYZ"
   ```

6. Push Your Feature Branch:
   Push your feature branch to the remote repository (`origin`):
   ```bash
   git push origin feature/awesome-feature
   ```

## Keeping Your Feature Branch Updated with `develop`:
7. Fetch Latest Changes from `develop`:
   ```bash
   git checkout develop
   git pull origin develop
   ```

8. Switch to Your Feature Branch:
   ```bash
   git checkout feature/awesome-feature
   ```

9. Merge `develop` into Your Feature Branch:
   Merge the changes from `develop` into your feature branch:
   ```bash
   git merge develop
   ```
   OR
   ```bash
   git rebase develop
   ```

10. Resolve Conflicts (if any):
    If there are conflicts during the merge or rebase operation, resolve them:
    ```bash
    # Edit the conflicted files to resolve conflicts
    git add .
    git rebase --continue
    ```

11. Test and Validate:
    Test your feature branch thoroughly to ensure compatibility with latest `develop`.

12. Push Changes:
    After merging or rebasing and testing your feature branch:
    ```bash
    git push origin feature/awesome-feature
    ```

## GitHub Interface Actions (for merging into `develop`):
- Navigate to your repository on GitHub (`https://github.com/featherfind/working-repo`).
- Click on the "Pull requests" tab.
- Locate your pull request for `feature/awesome-feature` into `develop`.
- Ensure all checks are green and conflicts are resolved. (If CI/CD is implemented)
- Assign reviewers and wait for the review to complete.
- Merge the pull request into `develop`.
