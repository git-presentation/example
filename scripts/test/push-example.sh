dir="$(dirname "$0")"
sh "$dir/../push-example.sh"
cd local-repository
echo "Change the README file"
echo "Change the README file" > NEW-README
cat README >> NEW-README
mv NEW-README README
echo "Commit it"
git commit -am "Commit"
echo "Push it"
git push
