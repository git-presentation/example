rand()
{
    tr -dc 0-9 < /dev/urandom | head -c10;
    echo
}

echo "Making a random commit..."
num=$(rand);
while [ -f "$num.txt" ]
do
    num=$(rand);
    echo $num;
done
touch "$num.txt"
git add "$num.txt"
git commit -m "Random commit $num"
