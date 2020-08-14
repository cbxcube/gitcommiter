#!/usr/bin/env bash
#

reportfile="collectstat.csv"
#archivefile=$(date)${reportfile}


function populate_data {
	date >> $reportfile
	uptime >> $reportfile
	df -h / >> $reportfile
	df -h /data >> $reportfile
	echo "data colection completed"
	mv $reportfile $(date|awk '{print $5}')$reportfile
	echo "file renamed"
}

function commitgit {
    git add .
    git commit -m "Commited on $(date)" -a
    git push
    echo "data pushed to git"
}

# runtime
populate_data
commitgit
echo "program completed. Exiting."
exit 0
