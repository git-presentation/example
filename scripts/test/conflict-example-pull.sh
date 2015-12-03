dir="$(dirname "$0")"
sh "$dir/../conflict-example.sh"
cd local-repository
echo "Change the README file"
echo "Change the README file" > NEW-README
cat README >> NEW-README
mv NEW-README README
echo "Commit it"
git commit -am "Commit"
echo "Push it"
git push
echo "That did not work. Now do a pull"
git pull
echo "Now check what was changed"
git status
git diff
echo "Resolve the conflict"
sed '/==.*/d' README | sed '/>>.*/d' | sed '/<<.*/d' > NEW-README
mv NEW-README README
echo "Check your changes"
git diff
git status
echo "Add the changes"
git add README
echo "Commit the changes"
git commit --no-edit
echo "Check the status"
git status
echo "And now push"
git push
