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


## The longest words in this book

|Length|Frequency|Word|
|:-:|:-:|:-|
|29|1|electroencephalograph| 
|25|1|telecommunication| 
|24|1|responsibilities| 
|24|1|palaeontological| 
|24|1|characterization| 
|23|3|correspondingly| 
|23|2|impossibilities| 
|23|1|representatives| 
|23|1|instantaneously| 
|23|1|disillusionment| 
|23|1|anthropologists| 
|22|5|administrative| 
|22|3|impressiveness| 
|22|3|administration| 
|22|2|characteristic| 
|22|1|untruthfulness| 
|22|1|unsatisfactory| 
|22|1|unintelligible| 
|22|1|understandable| 
|22|1|transportation| 
|22|1|thermodynamics| 
|22|1|superstructure| 
|22|1|specialization| 
|22|1|sophistication| 
|22|1|sentimentality| 
|22|1|scholastically| 
|22|1|representative| 
|22|1|representation| 
|22|1|predetermining| 
|22|1|potentialities| 
|22|1|overwhelmingly| 
|22|1|overpopulation| 
|22|1|municipalities| 
|22|1|irregularities| 
|22|1|eccentricities| 
|22|1|developmentare| 
|22|1|contemporaries| 
|22|1|considerations| 
|22|1|communications| 
|22|1|associatedwith| 
|22|1|archaeologists| 
|22|1|administrators| 
|21|5|technological| 
|21|4|circumstances| 
|21|3|extraordinary| 
|21|3|concentration| 
|21|3|comparatively| 
|21|2|traditionally| 
|21|2|superstitious| 
|21|2|sophisticated| 




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

# Get the longest words

cat FiE_wf.log |  awk '{ print length, $0 }' | sort -n -r -s | cut -d" " -f2- >> longest_word.log
```


