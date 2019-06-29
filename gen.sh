#!/bin/bash
curl -L -O https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
genpac --format=pac \
	--pac-proxy="SOCKS5 127.0.0.1:1080" \
	--gfwlist-local=~/gfwlist.txt \
	--output=./pac.txt \
	--user-rule="||youtube.com" \
	--user-rule="@@sina.com" 
