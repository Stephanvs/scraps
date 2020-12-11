TIMESTAMP=$(date +"%Y-%m-%dT%H:%M:%SZ")

curl -s 'https://www.megekko.nl/scripts/wachtrij/wachtrij.php' \
  -H 'authority: www.megekko.nl' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'accept: */*' \
  -H 'origin: https://www.megekko.nl' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://www.megekko.nl/info/RTX-3080' \
  -H 'accept-language: en-US,en;q=0.9,nl;q=0.8' \
  -H 'cookie: PHPSESSID=4nklpu05lc74qh23mknvmpa663; SERVERID=web01; _gcl_au=1.1.1395096795.1606164002; _ga=GA1.2.1105767830.1606164003; _gid=GA1.2.51440648.1607341101; cookiemelding=set; _pk_ref.2.6971=%5B%22%22%2C%22%22%2C1607508868%2C%22https%3A%2F%2Fgathering.tweakers.net%2F%22%5D; _pk_ses.2.6971=1; _pk_id.2.6971=a5cd2832bdba522c.1606164002.17.1607508870.1607440726.' \
  --data-raw "ajax=lookup&orderid=$ORDER_ID&postcode=$POSTCODE" \
  --compressed | jq .data | [ tq "div" -t ] 2>&1 data/$TIMESTAMP.md