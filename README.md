## About

This is a set of scripts I found helpful to pull a list of blog articles (with permission) into leanpub.  Leanpub lets you publish ebooks: https://leanpub.com

### Requirements

perl, wget, python, leanpub account, ability to modify shell scripts

### Workflow

* Find a list of links to download.  Save this to list.html
* Download them using download.sh
* Modify the regular expressions in cleanup-html.pl to delete any non content html, and run that script.
* Convert the output to markdown using convert-to-markdown.sh
* Create your leanpub book, and put all the markdown in the manuscript directory.
* Generate the Book.txt file from list.html using build-chapter-list-from-links.sh
* If using google spreadsheets to coordinate review of articles (perhaps to decided to include/exclude various articles), use build-url-list-from-links.sh to generate a list of urls in copy-pasteable format.

### Notes

This workflow requires you to understand the scripts.  

