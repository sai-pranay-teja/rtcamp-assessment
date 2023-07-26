source install.sh
status_check_docker () { 
    if [ $? -eq 0 ];
    then
      echo All the tools have been installed
    else
      echo Installing tools
      docker_setup
    fi
}

status_check_docker_compose () { 
    if [ $? -eq 0 ];
    then
      echo All the tools have been installed
    else
      echo Installing tools
      docker_compose_setup
    fi
}