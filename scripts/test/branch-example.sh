dir="$(dirname "$0")"
sh "$dir/../branch-example.sh"
cd local-repository
git log --oneline --graph --all --decorate
