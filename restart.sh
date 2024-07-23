#!/bin/bash

docker restart onlineshope_db_1 onlineshope_pgadmin_1 onlineshope_web_1


# Edit the Crontab File:
# Open the crontab file for editing. 
# You can do this by running the following command in your terminal:

# crontab -e
# 0 */2 * * * /path/to/your/script.sh



# Here's a breakdown of the cron schedule syntax:

#     0: The script will run at minute 0.
#     */2: The script will run every 2 hours.
#     * * *: The script will run every day, every month, and every day of the week.



# chmod +x /path/to/your/script.sh


# Check if the Cron Job is Scheduled:
# You can verify that your cron job has been scheduled by running:
# crontab -l


