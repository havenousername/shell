# !/sh/bin

echo "First value"
read first
echo "Second value"
read second

echo \n
expr $first + $second
expr $first - $second
expr $first / $second 
expr $first \* $second
expr $first % $second
