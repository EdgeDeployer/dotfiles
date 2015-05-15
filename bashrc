# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Sets "flushdns" to command to flush the DNS cache
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# Used to trigger RVM when opening Terminal
cd .
