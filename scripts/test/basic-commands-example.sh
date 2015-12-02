echo "Create a repository"
git init my-repository
cd my-repository
echo "Create a file"
touch README
echo "Check the git status"
git status
echo "We see that we have a file that is not in version control (untracked), so we add it"
git add README
echo "We check the status again, and also check the diff"
git status
git diff
echo "Now we commit this change"
git commit -m "Initial Commit"
echo "Now check the status again, and check the log"
git status
git log
