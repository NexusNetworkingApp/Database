#!/bin/bash

# Variables
MYSQL_ROOT_PASSWORD="password"

# Run SQL script inside the MySQL container
mysql -u root -ppassword -h localhost < initialize.sql
mysql -u root -ppassword -h localhost nexus_db < individual.sql
mysql -u root -ppassword -h localhost nexus_db < organization.sql
mysql -u root -ppassword -h localhost nexus_db < account.sql
mysql -u root -ppassword -h localhost nexus_db < app_feedback.sql
mysql -u root -ppassword -h localhost nexus_db < photo.sql
mysql -u root -ppassword -h localhost nexus_db < preference.sql
mysql -u root -ppassword -h localhost nexus_db < like.sql
mysql -u root -ppassword -h localhost nexus_db < match.sql
mysql -u root -ppassword -h localhost nexus_db < incompatible.sql
mysql -u root -ppassword -h localhost nexus_db < message.sql
mysql -u root -ppassword -h localhost nexus_db < job.sql
mysql -u root -ppassword -h localhost nexus_db < job_application.sql
mysql -u root -ppassword -h localhost nexus_db < skill.sql
mysql -u root -ppassword -h localhost nexus_db < interest.sql
mysql -u root -ppassword -h localhost nexus_db < work_history.sql