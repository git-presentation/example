dir="$(dirname "$0")"
sh "$dir/push-example.sh"
echo "Adding some commits and branches..."
cd local-repository
sh "$dir/../random-commit.sh"
sh "$dir/../random-commit.sh"
git checkout -b feature1
sh "$dir/../random-commit.sh"
sh "$dir/../random-commit.sh"
git checkout master
git checkout -b feature2
sh "$dir/../random-commit.sh"
git checkout feature1
sh "$dir/../random-commit.sh"
git checkout feature2
sh "$dir/../random-commit.sh"
git checkout master
git merge --no-ff --no-edit feature1
git checkout feature2
sh "$dir/../random-commit.sh"
git checkout master
git merge --no-ff --no-edit feature2
cd ..
