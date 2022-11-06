
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