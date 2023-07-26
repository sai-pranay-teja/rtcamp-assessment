source install.sh
status_check () { 
    if [$? -eq 0]
    then
      echo All the tools have been installed
    else
      docker
    fi
}