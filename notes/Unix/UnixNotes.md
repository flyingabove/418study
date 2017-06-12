---
output:
  html_document: default
  pdf_document: default
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

-n sort by numeric
-u unique
-r reverse

#### uniq

-c count
-d print duplicated
-f skips lines for determining uniqness
-i ignore case
-u print uniq

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

#### awk '{script } file

-f instruction file
-v assigns value to variable awk -v name=Jerry '{Print}'

#### cut [exportfile]

-b                     specify byte position to cut with list or range
-c                     character (includes special chars) same thing
--complement           cut opposite of
-d                     cut by delimiter
-f                     index to specify adter delimiter
--output-delimiter=' ' set output delimiter to space

## Unix Study questions

**0.** What is UNIX

An operating system that consists of kernel, shell, and programs. Common varieties include linux and MacOS. 

**1.** Describe briefly the unix shell

The shell is a command line interpreter. The kernel executes the commands.

**2.** Describe the use of the unix cut command

segmenting data by delimiter or extracting characters by index

**3.** Describe the use of the unix awk command

Used to extract data.

**4.** Describe the model of unix pipes

When a command executes the result is stored in linux's VFS (virtual file system) that gets mounted to Kernel Space during boot. Then in a a process is created for each command one to process the data and write into the pipefs and one to read from the pipedfs and process the data again.

**5.** Describe how the unix sort and uniq commands differ and how they are similar

Similar sort has -u option that runs uniq after sort. Uniq loads less data into memory. Sort command sorts stuff uniq compares each line and only prints out uniq lines.

**6.** How does the unix file permission model work

using ls -l 
first position file or directory, first three positions = user permission, second three positions = group permissions, third 3 positions = global permissions.

r = read
w = write
x = execute

use chmod to change

**7.** Is there a way to erase all files in the current directory, including all its sub-directories, using only one command

rm -rf *

**8.** Describe the model of string interpolation in the unix shell

command [-options] [-arguments]

**9.** Compare and contrast relative vs absolute paths

Absolute path specifies a unique directory in a file system starting with the root directory.  A relative path starts with a given working directory.

**10.** Write a command to download the file http://example.com/data.csv.gz, unzip it, and find the number of unique values of the 4th column of the file.

wget http://static.crunchbase.com/data_crunchbase/csv_export_sample.tar.gz
gunnzip http://static.crunchbase.com/data_crunchbase/csv_export_sample.tar.gz
tar -xf csv_export_sample.tar jobs.csv
cut -d"," -f4 jobs.csv | sort | uniq



