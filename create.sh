sudo ipset create fuck-off hash:net
rm master.txt
for i in `\ls *.txt`; do
  cat $i>>master.txt
done
while read line; do
  echo "banning $line..."
  sudo ipset add fuck-off $line
done < "master.txt"
sudo ipset save fuck-off > fuck-off.ipset