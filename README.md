# 403 bypass finder  
## Installation:  
Directions assume file is in your home directory (/home/username or ~)  
**If** not extracted: `tar xfz 403-bypass-tester.tar.gz -C ~`  
**If** ffuf is not installed:  
Debian based: `sudo apt install -y ffuf`  
RedHat based: `yum install ffuf`  
Arch based: `pacman -S ffuf`  
`chmod +x ~/403-bypass-tester/403-bypass-tester.sh`  
Usage:  
`cd ~/403-bypass-tester`
`sh 403-bypass-tester.sh https://domain.com path/to/dir/or/file`  
> **Note:** Mind the slashes, no starting or ending slashes on domain or or path  
  
When script is finished, results will be in 'results-<datetime>.html' you can view it in a web browser  
  
Props:
Entirely uses [ffuf](https://github.com/ffuf/ffuf)  
403 bypass methods formatted from [SecLists](https://github.com/danielmiessler/SecLists)  
  
Distributes under the [WTFPL Version 2](http://www.wtfpl.net/) [![WTFPL](assets/wtfpl-badge.png)](http://www.wtfpl.net/)  
See [COPYING](COPYING.txt) for details  

