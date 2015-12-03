dir="$(dirname "$0")"
sh "$dir/../branch-example.sh"
cd local-repository
git checkout feature2
sh "$dir/../random-commit.sh"
git checkout master
git merge --no-ff --no-edit feature2
git log --oneline --graph --all --decorate
