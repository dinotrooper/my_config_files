#alias for docker ps with formatting to remove command, ports, status columns
alias dockerps='docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Status}}"'
alias ssh_legacy='ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -c 3des-cbc'
alias sshwoh='ssh -o StrictHostKeyChecking=no'
