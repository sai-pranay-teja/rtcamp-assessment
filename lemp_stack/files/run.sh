DIR="/run/nginx"
if [ ! -d "$DIR" ]; then
  mkdir /run/nginx
  nginx
  
fi