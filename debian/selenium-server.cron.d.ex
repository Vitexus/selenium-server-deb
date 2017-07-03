#
# Regular cron jobs for the selenium-server package
#
0 4	* * *	root	[ -x /usr/bin/selenium-server_maintenance ] && /usr/bin/selenium-server_maintenance
