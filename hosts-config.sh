# Check if site name argument was provided
if [ -z "$1" ]; then
  echo "Please provide a site name as an argument."
  exit 1
fi

site_name="$1"
echo "127.0.0.1:8000 $site_name" >> /etc/hosts
