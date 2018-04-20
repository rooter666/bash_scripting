
#!/bin/bash

case $1 in
  -u)
     if [[ ! -e /etc/ssh/ssh_config.gpg ]]; then
       echo "file not found Please run sshlock -l"
     else
       gpg /etc/ssh/ssh_config.gpg
     fi
  ;;
  -l)
     if [[ ! -e /etc/ssh/ssh_config ]]; then
       echo "file not found Please, run sshlock -u"
     else
       gpg -c /etc/ssh/ssh_config
       rm /etc/ssh/ssh_config
     fi
  ;;
  --help)
  echo "options are -l for lock ssh config file or -u for unlock"
  ;;
  *)
  echo "input not understood please run --help for more info"
  ;;
esac

exit
