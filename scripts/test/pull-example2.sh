dir="$(dirname "$0")"
sh "$dir/../pull-example2.sh"
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
git pull --no-edit
echo "And push again"
git push
