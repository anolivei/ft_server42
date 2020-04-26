nginx_file='/etc/nginx/sites-available/default'

grep "autoindex on;" "$nginx_file" > /dev/null
if [ $? -eq 0 ]; then
	echo "Current state of autoindex is ON"
	sed -i 's/autoindex on/autoindex off/' "$nginx_file"
	autoindex="OFF";
else
	echo "Current state of autoindex is OFF"
	sed -i "s/autoindex off/autoindex on/" "$nginx_file"
	autoindex="ON";
fi
echo "Switching and restarting server.."
/etc/init.d/nginx restart
echo -e "Autoindex is now $autoindex!"
