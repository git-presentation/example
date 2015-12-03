dir="$(dirname "$0")"
sh "$dir/../pull-example.sh"
cd local-repository
git log
git pull
git log
