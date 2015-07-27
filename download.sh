
# expects urls in 'list.html' in directory above to be in this format:
# <a href="http://www.calculatedriskblog.com/2008/10/good-morning.html">Good Morning</a> 10/09/2008<br />

for url in `grep 'href' ../list.html |sed 's/.*href="//' |sed 's/">.*//'`; do wget $url; done
