tshark -i wlan0mon -T fields -e 'wlan.ra' -e 'wlan.sa' -e 'wlan.ta' -e 'wlan.da' | ruby1.9.1 run.rb
