mkdir ~/duckdns
echo 'url="https://www.duckdns.org/update?domains=ellenszenvespublic&token=dbeb9e2e-8aa2-4b1c-9ce0-27e7114fb0b4&ip=" | curl -k -o ~/duckdns/duck.log -K -' > ~/duckdns/duck.sh
sudo chmod 700 ~/duckdns/duck.sh
echo "*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1" >> /var/spool/cron/crontabs

