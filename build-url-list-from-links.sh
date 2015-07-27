# this script is useful if you have a google spreadsheet that you are using to track review of each blog post
# expects urls in 'list.html' in current directory to be in this format:
# <a href="http://www.calculatedriskblog.com/2008/10/good-morning.html">Good Morning</a> 10/09/2008<br />

grep href list.html|sed 's/[^"]*"//'|sed 's/".*//' >> tmp.url.list

