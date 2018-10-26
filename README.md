# MySQL-Autoincrement-Checker
MySQL allows auto increment ids as a way of uniquely identifying each row in a database. However each attribute in a my MySQL table has a fixed maximum size which limits the total possible number of rows that can be accommodated with auto increment.  This is a Python script which will check for all tables in a database that have auto increment IDs and are about to run out of those IDS. All identified tables should be sent as an alert to slack
