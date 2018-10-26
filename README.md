# MySQL-Autoincrement-Checker
MySQL allows auto increment ids as a way of uniquely identifying each row in a database. However each attribute in a MySQL table has a fixed maximum size which limits the total possible number of rows that can be accommodated with auto increment.  This is a Python script which will check for all tables in a database that have auto increment IDs and are about to run out of those IDS. All identified tables should be sent as an alert to slack. 

Requirements (For linux):
1) Install MySQl
2) Install Python (2.7 recommend) 
3) Create a local database in MySQl to work upon or you can use mysql dump file which i have uploaded. You have to extract it to                  use a test database that I have created.
   Command to extract dump file:=>  
   In MySQL terminal
   mysql> SOURCE sqlcheckerdb.sql
4) In python script, to connect to MySQL you have to enter your details.
   Line to be changed:
   mydb = MySQLdb.connect(host="localhost", port=3306, user=username, passwd=password) #LINE 9
5) In python also changed the name of the database to the one you are using
   Line to be changed:
   cur.execute("USE databasename")   #LINE 18
6) To sent alert on Slack you have to add an app to your slack channnel i.e. Incoming web hook
7) Incoming web hook url has to be changed in LINE 12 to connect to your slack.
8) Run Python Script.
   Command:
   python mysqlchecker.py



