touch wntmp.sh
chmod +x wntmp.sh
echo "wordnet" > $1.txt
wordnet $1 | grep -| sed "s/.*-/wordnet $1 -/g"|sed "s/\t.*/ >> $1.txt/g" > wntmp.sh
./wntmp.sh
