#alias for docker ps with formatting to remove command, ports, status columns
alias dockerps='/usr/bin/docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Status}}"'
alias ssh_legacy='/usr/bin/ssh -o KexAlgorithms=+diffie-hellman-group1-sha1 -c 3des-cbc'
alias sshwoh='/usr/bin/ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias lsa='/usr/bin/ls -lah'

#aliases for windows desktop, documents, downloads
alias cd_docs='cd /mnt/c/Users/Alex/Documents'
alias cd_dt='cd /mnt/c/Users/Alex/Desktop'
alias cd_dls='cd /mnt/c/Users/Alex/Downloads'
