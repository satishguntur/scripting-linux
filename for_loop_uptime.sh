for i in $(cat server); do echo $i && ssh -q $i 'uptime;uname -r';done | paste - - -
