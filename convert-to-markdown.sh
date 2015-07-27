
# uses python script, expects files to change to be in a directory called 'cleaned2' and renames output to have a .txt suffix rather than an .html

for i in cleaned2/*.html ; do f=`echo $i|sed 's/cleaned2/markdown/'|sed 's/.html/.txt/'`; python html2text.py $i > $f ; done
