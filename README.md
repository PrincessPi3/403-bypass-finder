# 403 bypass finder
Fuzzes for common 403 bypasses, nothing special. Just a shell script for [ffuf](https://github.com/ffuf/ffuf) with some lists formatted from [SecLists](https://github.com/danielmiessler/SecLists)  
Nothing special, just a teensy tiny helper

## Prerequisites:
Linux based OS
**If** ffuf is not installed:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Debian based: `sudo apt install -y ffuf`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RedHat based: `yum install ffuf`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arch based: `pacman -S ffuf`  
**If** not extracted:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`tar xfz 403-bypass-finder.tar.gz -C ~`  
  
## Installation: 
Directions assume directory 403-bypass-tester is in your home directory (/home/username/403-bypass-tester or ~/403-bypass-tester)  
`chmod +x ~/403-bypass-tester/403-bypass-finder.sh`  
  
## Usage:  
`cd ~/403-bypass-tester`  
`sh 403-bypass-tester.sh https://example.com path/to/dir/or/file`  
> **Note:** Mind the slashes, no starting or ending slashes on domain or or path  
  
**When script is finished, results will be in 'results-\<datetime>.html' you can view it in a web browser**  
  
Props:  
Entirely uses [ffuf](https://github.com/ffuf/ffuf) 
403 bypass methods formatted from [SecLists](https://github.com/danielmiessler/SecLists)  
  
Distributed under the [WTFPL Version 2](//www.wtfpl.net/) [![WTFPL](assets/wtfpl-badge.png)](//www.wtfpl.net/) see [COPYING](COPYING.txt) for details