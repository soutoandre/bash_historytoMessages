# BEGIN ANSIBLE MANAGED BLOCK
function log2syslog
  {
    declare COMMAND
    COMMAND=$(fc -ln -0)
    logger -p local1.notice -t bash -i -- "`who am i | awk '{print $1,$5}'`:${USER}:$$:${COMMAND}"
  }
trap log2syslog DEBUG
# END ANSIBLE MANAGED BLOCK
