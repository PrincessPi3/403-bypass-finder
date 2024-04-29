#!/bin/bash
if [ -z $1 ]; then 
    echo "ERROR: No site. Usage 'sh 403-bypass-finder.sh https://example.com path/to/dir/or/file'";
    exit;
fi;

if [ -z $2 ]; then
    SITE = "$1STARTEND";
else
    SITE="$1/START$2END";
fi;
DOMAIN=`echo $1 | cut -d '/' -f 3;`
DATETIME=`date "+%A-%d-%b-%Y-%I:%M:%S-%p"`

ffuf -w assets/403-bypass-start.txt:START -w assets/403-bypass-end.txt:END -w assets/http-methods.txt:METHODS -w assets/headers.txt:HEADERSLIST -w assets/rewrite.txt:REWRITE -u $SITE -o results/$DOMAIN-$DATETIME.html -of html -ac -mc 200-299,307,405,500 -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36' -H "HEADERSLIST: 127.0.0.1" -H "REWRITE: $2" -X METHODS -r 