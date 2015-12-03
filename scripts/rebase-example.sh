dir="$(dirname "$0")"
sh "$dir/init-repos.sh"
echo "Adding another commit..."
cd local-repository
echo "You can add something here\n\n\n\n\n\n\nBut don't change anything here" > README
git commit -am "Add some text to the README"
echo "Something was added here anyway" >> README
git commit -am "Commit that was already pushed by someone"
echo "Pushing the commit..."
git push
echo "Resetting back to the original situation..."
git reset --hard HEAD^
cd ..
