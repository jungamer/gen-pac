# 生成shadowsocks pac文件
## 使用
1. 执行./gen_pac.sh;  
2. 在当前文件夹下会生成pac.txt;  
3. 用新生成的pac.txt 替换掉windows下shadowsocks.exe同级目录下的pac.txt文件。可通过PAC->编辑本地PAC文件找到。  

## 其它
1. 使用工具[genpac](https://github.com/JinnLynn/genpac)。  
2. [pac书写规则](http://findproxyforurl.com/pac-functions/)。  
3. 常用添加规则:  
```--user-rule="||youtube.com"```
> 表示走代理。
------------------
```--user-rule="@@youtube.com"```
> 表示不走代理。

## gen_pac.sh
```
#!/bin/bash
curl -L -O https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
genpac --format=pac \
      --pac-proxy="SOCKS5 127.0.0.1:1080" \
      --gfwlist-local=~/gfwlist.txt \
      --output=./pac.txt \
      --user-rule="||youtube.com" \
      --user-rule="@@sina.com"
```
