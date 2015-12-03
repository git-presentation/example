dir="$(dirname "$0")"
sh "$dir/../init-repos.sh"
echo "Adding some commits and branches..."
cd local-repository
sh "$dir/../../random-commit.sh"
sh "$dir/../../random-commit.sh"
git checkout -b feature1
sh "$dir/../../random-commit.sh"
sh "$dir/../../random-commit.sh"
git checkout master
git checkout -b feature2
sh "$dir/../../random-commit.sh"
git checkout feature1
sh "$dir/../../random-commit.sh"
git checkout feature2
sh "$dir/../../random-commit.sh"
git checkout master
git merge --no-ff --no-edit feature1
git push
git checkout feature2
git pull --no-edit origin master
sh "$dir/../../random-commit.sh"
git checkout master
git merge --no-ff --no-edit feature2
git log --oneline --graph --all --decorate
