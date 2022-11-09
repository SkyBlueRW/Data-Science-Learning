
## Alias
alias srcCod="cd ~/src"

export pathToAPIKeys="/home/user/apiKeys.sh"
## Source API Keys
echo "I am sourcing this path: " $pathToAPIKeys
source pathToAPIKeys

## Sourcing python virtual ENV
echo "I am sourcing a Python Virtual ENV"
source ~/.venv/bin/activate

# setting variable locally
VAR=1
# setting variables to .bashrc
export VAR=1

# Control flow
if ["$FOOD" = "Apple"]; then
    echo "Eat Yogurt with your Apple"
elif ["$FOOD" = "Milk"]; then 
    echo "Eat Cereal with your Milk"
else
    echo "Eat your ${FOOD} by itself!"
fi


# For loop
declare -a array=("apple" "pear" "cherry")
for i in "${array[@]}"
do 
    echo "This ${i} is delicious!"
done

echo "How May Loops Do You Want?"
read LOOPS 

COUNT=1
while [ $COUNT -le $LOOPS]
do 
    echo "Loop# $COUNT"
    ((COUNT++))
done


# Manipulate Data
## Truncate
head -n 10 file.txt 
tail -n 10 file.txt 
shuf -n 10 file.txt 

## Filter
### find pattern 
grep apple filter-file.txt
### count occurrence
grep -c apple filter-file.txt
### find either pattern
grep -e apple -e pear filter-file.txt
### count occurrences of both patterns
grep -c -e apple -e pear filter-file.xtx
### show all lines that do not contain pattern
grep -v apple filter-file.txt 
 

## Search
### find all bash scripts
find . -name "*.sh"
### find all executable non-invisible files
find . -perm /+x ! -name '.*' -type f
### find all executable non-invisible files and ignore .git directories
find . -perm /+x -not -path '*/\.*' -type f 



## Building a scrip in bash
#!/usr/bin/env/bash
# chmod +x
### Set strict mode. Causes shell to exit when a command fails
set -e 
### Enables printing of shell input lines as they are read
set -v 
### Enables print of command traces before executing command
set -x
### set a variable 
variable="one"
#!/usr/bin/bash -xv for debugging mode

## Bulding a Bash Function
add() {
    echo "First Parameter: $1"
    echo "Second Parameter: $2"

    num1=$1
    num2=$2
    result=$((num1 + num2))
    echo $result
}
### call with add 99 100
### output=$(add 5 9)


## Makefile
hello:
    echo "This is a recipe called hello"

goodbye:
    echo "This is a recipe called goodbye"

all: hello goodbye 

## Data Structure
### Array
declare -a array=("apple" "pear" "cherry")


# Search 
## Locate Command: use metadata
sudo updatedb
### look for detailed path
locate .zshrc
### count number
locate -c .zshrc

## Find command: real time
find . -name .zshrc
sudo find / -name .zshrc
### Remove all
find /tmp -name foo* -type f -print | xargs /bin/rm -f

# File System 
## Create: touch, mkdir
mkdir -p bar/bam/biz
## Read: cat, less, grep
## Update: mv, tar, zip, chmod, rsync
rsync -av foo/ newspot/foo/ # Incremental change
zip -r archives/foo.zip foo
unzip archives/foo.zip
## Delete: rm, rmdir


# Permissions
# Name        Owner     Group     Other
# access      r w x     r w x     r w x 
# binary      4 2 1     4 2 1     4 2 1 
# enabled     1 1 1     1 0 1     1 0 0

# result      4 2 1     4 0 1     1 0 0  
# total         7         5         4
  
