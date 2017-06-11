---
output:
  pdf_document: default
  html_document: default
---

## Unix Study Guide

#### ls

-a    show hidden
-s -h show size of file
-l    show permissions ect.

#### mv

mv filename newlocation/filename

#### wc

-l lines
-w words
-c characters

#### sort

-u unique
-r reverse

#### head

-{x} show top x

#### file types

\- regular
d  directory

#### permissions

r read
w write
x edit/traverse
\- nothing

#### chmod

\+ add permission
\- subtract permission
=  set permission
u  user
g  group
a  all others

Example: chmod u+r filename.txt

#### grep
{word} returns line with those characters
-w     match whole word
-n     add line numbers
-v     print lines with no matches

#### find {dir} 
-type     specify type of file
-maxdepth specifiy layers
-empty    find empty directories



 


## Unix Study questions

**0.** What is UNIX

**1.** Describe briefly the unix shell

**2.** Describe the use of the unix cut command

**3.** Describe the use of the unix awk command

**4.** Describe the model of unix pipes

**5.** Describe how the unix sort and uniq commands differ and how they are similar

**6.** How does the unix file permission model work

**7.** Is there a way to erase all files in the current directory, including all its sub-directories, using only one command

**8.** Describe the model of string interpolation in the unix shell

**9.** Compare and contrast relative vs absolute paths

**10.** Write a command to download the file http://example.com/data.csv.gz, unzip it, and find the number of unique values of the 4th column of the file.


