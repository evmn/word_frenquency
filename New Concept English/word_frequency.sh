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

