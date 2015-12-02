dir="$(dirname "$0")"
sh "$dir/../rebase-example.sh"
cd local-repository
echo "Change the README file"
echo "Change the README file" > NEW-README
cat README >> NEW-README
mv NEW-README README
echo "Commit it"
git commit -am "Commit"
echo "Push it"
git push
echo "That did not work. Try to fetch and rebase"
git fetch
git rebase
echo "And push again"
git push
