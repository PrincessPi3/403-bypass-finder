# 403 bypass finder  
## Installation:  

**If** ffuf is not installed:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Debian based: `sudo apt install -y ffuf`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RedHat based: `yum install ffuf`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arch based: `pacman -S ffuf`  
**If** not extracted:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`tar xfz 403-bypass-tester.tar.gz -C ~`  
  
## Installation: 
Directions assume file is in your home directory (/home/username or ~)  
`chmod +x ~/403-bypass-tester/403-bypass-tester.sh`  
  
## Usage:  
`cd ~/403-bypass-tester`  
`sh 403-bypass-tester.sh https://example.com path/to/dir/or/file`  
> **Note:** Mind the slashes, no starting or ending slashes on domain or or path  
  
When script is finished, results will be in 'results-\<datetime>.html' you can view it in a web browser  
  
Props:  
Entirely uses [ffuf](https://github.com/ffuf/ffuf)  
403 bypass methods formatted from [SecLists](https://github.com/danielmiessler/SecLists)  
Distributed under the [WTFPL Version 2](//www.wtfpl.net/) [![WTFPL](assets/wtfpl-badge.png)](//www.wtfpl.net/)  
See [COPYING](COPYING.txt) for details  

