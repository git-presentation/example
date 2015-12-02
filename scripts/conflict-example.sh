dir="$(dirname "$0")"
sh "$dir/push-example.sh"
echo "Adding another commit..."
cd local-repository
echo "This was already changed in the remote repository" > README
git commit -am "Commit that was already pushed by someone"
echo "Pushing the commit..."
git push
echo "Resetting back to the original situation..."
git reset --hard HEAD^
cd ..
