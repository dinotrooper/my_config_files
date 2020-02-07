#alias for docker ps with formatting to remove command, ports, status columns
alias dockerps='docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Status}}"'
