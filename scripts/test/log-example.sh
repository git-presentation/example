dir="$(dirname "$0")"
sh "$dir/../init-repos.sh"
cd local-repository
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
sh "../$dir/../random-commit.sh"
git log
git log --oneline --graph --all --decorate
