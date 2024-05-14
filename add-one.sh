while read line; do
  echo "banning $line..."
  sudo ipset add fuck-off $line
done < "$1.txt"
