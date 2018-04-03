#! / bin / bash

textExport=~/Technology

echo `deborphan --guess-data > $textExport/deborphan.txt`

while [[ -s $textExport/deborphan.txt ]]
do
	sudo deborphan --guess-data | xargs sudo aptitude -y purge
	echo `deborphan --guess-data > $textExport/deborphan.txt`
done
