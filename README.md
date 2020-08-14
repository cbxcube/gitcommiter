# gitcommiter
collect data about system and push to git hourly

- location on kimsufi: ~/production/gitcommiter
  user: cbx

# crontab
 
# run the reporter script 30 minutes after each hour
30 * * * * /software/scripts/reporter.sh

# run every 2 hours at 0 minutes
0 */2 * * * /software/scripts/parse_status.pl
