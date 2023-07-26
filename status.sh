source install.sh
status_check () { 
    if [ $? -eq 0 ];
    then
      echo All the tools have been installed
    else
      echo Installing tools
      docker_setup
      docker_compose_setup
    fi
}