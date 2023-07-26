source install.sh
status_check () { 
    if [$1 -eq 0]
    then
      echo All the tools have been installed
    else
      echo Installing tools
      docker_setup
    fi
}