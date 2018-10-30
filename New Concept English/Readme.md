# Fluency in English

There are 22778 words in this book, 4710 different words.

|Frequency|Word number|
|:-:|:-:|
|1|2721|
|2|800|
|3|375|
|4|179|
|5|127|
|6|90|
|7|78|
|8|40|
|9|33|
|10|34|



## Script to analysis word frequency

```sh
#/bin/bash

# Delete Title Line
sed -i 's/^Book IV.*//g' $1

# Upper case to lower case

cat $1 | tr 'A-Z' 'a-z' >> tmp 

mv tmp $1

# Delete digits and punctuation

sed -i 's/[[:punct:]]/ /g' $1
sed -i 's/[[:digit:]]/ /g' $1

# Change space to return

sed -i 's/ /\n/g' $1

# Delete empty line, space or tab line

sed -i -e '/^$/d' $1
sed -i -e '/^[ \t-]*$/d' $1


# Calculate word frequency

cat $1 |  sort | uniq -c | sort -rn >> FiE_wf.log
```
