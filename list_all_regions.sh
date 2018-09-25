
# curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer b7d03a6947b217efb6f3ec3bd3504582" "https://api.digitalocean.com/v2/regions"

if [ -d /cygdrive ]; then
   ~/z/bin/win64/doctl.exe compute region list
else
   doctl compute region list
fi





