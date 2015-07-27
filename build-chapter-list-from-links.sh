# expects urls in 'list.html' in current directory to be in this format:
# <a href="http://www.calculatedriskblog.com/2008/10/good-morning.html">Good Morning</a> 10/09/2008<br />

grep href list.html|sed 's!">.*!!' |sed 's!.*/!!'|sed 's/html/txt/' > tmp.book.list

echo "now mv tmp.book.list to Book.txt"
