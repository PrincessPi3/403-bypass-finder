#!/bin/bash
ffuf -w assets/403-bypass-start.txt:START -w assets/403-bypass-end.txt:END -u "$1/START$2END" -o results/results-`date "+%A-%d-%b-%Y-%I:%M:%S-%p"`.html -of html -mc all -fc 403,404 -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36' -v -r
