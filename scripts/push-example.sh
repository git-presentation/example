if [ -d "remote-repository" ]; then
    echo "Removing the previous remote repository..."
    rm -rf ./remote-repository
fi
echo "Creating a remote repository..."
mkdir remote-repository
cd remote-repository
git init --bare
cd ..
if [ -d "local-repository" ]; then
    echo "Removing the previous remote repository..."
    rm -rf ./local-repository
fi
echo "Creating a local repository..."
mkdir local-repository
cd local-repository
git init
echo "Adding a file to the repository..."
touch README
git add README
git config push.default simple
git commit -m "Initial commit"
echo "Setting remote-repository as remote..."
git remote add origin ../remote-repository
git push --set-upstream origin master
cd ..
