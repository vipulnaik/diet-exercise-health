sed -i '' -e 's/+/|/g' $1
sed -i '' -e '1d' $1
NUM_LINES=`wc -l $1 | awk '{print \$1}'`
sed -i '' -e "${NUM_LINES}d" $1
