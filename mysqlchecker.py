import MySQLdb
import requests
import json
from slackclient import SlackClient


try:
  #change these details according to your credentials
  mydb = MySQLdb.connect(host="localhost", port=3306, user="root", passwd="mehta123")
  #for sending alerts you have to add incoming web hook for the required channel
  #this is the url of that particular channel web hook
  slack_url = 'https://hooks.slack.com/services/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'
  
  slkmsg = "Tables having auto-increment ids are: \n"
  print "Connection successfull \n"
  cur = mydb.cursor()
  #change the database accordingly.
  cur.execute("USE sqlautochecker")
  result = cur.execute("SHOW TABLES")
  print "Tables having auto-increment ids are: \n"
  reqtypes = []
  reqtables = []
  for (table_name,) in cur:
     currname = table_name
     desc = cur.execute("DESC " + currname)
     autoincrelist = [column[5] for column in cur.fetchall()]
     desc1 = cur.execute("DESC " + currname)
     autoinctypes = [column[1] for column in cur.fetchall()]
     if(autoincrelist[0] == 'auto_increment'):
         slkmsg = slkmsg + table_name + "\n"
         print table_name
         reqtables.append(table_name)
         reqtypes.append(autoinctypes[0])
  slkmsg = slkmsg + "\nDetails of auto-increment attribute of qualified tables: \n"
  print "\nDetails of auto-increment attribute of qualified tables: \n"   
  for i in range(len(reqtypes)):
        if (reqtypes[i] == "int(10) unsigned" or reqtypes[i] == "int(11)" or reqtypes[i] == "int(11) signed"):
            slkmsg = slkmsg + "\n" + reqtables[i] + "=> int" + "\n"
            print "\n"
            print reqtables[i] + "=> int"
            cur.execute("SELECT max(id) FROM " + reqtables[i])
            lastval = cur.fetchone()
            slkmsg = slkmsg + "Current auto-increment value of this table " + str(lastval[0]) + "\n"
            print "Current auto-increment value of this table " + str(lastval[0])
            if(str(lastval[0]) == 'None'):
                slkmsg = slkmsg + "You are having 4294967295 auto-increment id's left" + "\n"
                print "You are having 4294967295 auto-increment id's left" 
            elif(lastval[0] > 4294967295):
                slkmsg = slkmsg + "Alert!!! This table can't have more auto-increment id's." + "\n"
                print "Alert!!! This table can't have more auto-increment id's."
            elif(lastval[0] == 4294967295):
                slkmsg = slkmsg + "Caution!! You are having only 1 auto-incremnt id left." + "\n"
                print "Caution!! You are having only 1 auto-incremnt id left."
            else:
                slkmsg = slkmsg + "You have " + str(4294967295 - lastval[0]) + " auto-increments id left." + "\n"
                print "You have " + str(4294967295 - lastval[0]) + " auto-increments id left."
        elif (reqtypes[i] == "tinyint(3) unsigned" or reqtypes[i] == "tinyint(4)" or reqtypes[i] == "tinyint(4) signed"):
            slkmsg = slkmsg + "\n" + reqtables[i] + "=> tinyint" + "\n"
            print "\n"
            print reqtables[i] + "=> tinyint"
            cur.execute("SELECT max(id) FROM " + reqtables[i])
            lastval = cur.fetchone()
            slkmsg = slkmsg + "Current auto-increment value of this table " + str(lastval[0]) + "\n"
            print "Current auto-increment value of this table " + str(lastval[0])
            if(str(lastval[0]) == 'None'):
                slkmsg = slkmsg + "You are having 255 auto-increment id's left"  + "\n"
                print "You are having 255 auto-increment id's left" 
            elif(lastval[0] > 255):
                slkmsg = slkmsg + "Alert!!! This table can't have more auto-increment id's." + "\n"
                print "Alert!!! This table can't have more auto-increment id's."
            elif(lastval[0] == 255):
                slkmsg = slkmsg + "Caution!! You are having only 1 auto-incremnt id left." + "\n"
                print "Caution!! You are having only 1 auto-incremnt id left."
            else:
                slkmsg = slkmsg + "You have " + str(255 - lastval[0]) + " auto-increments id left." + "\n"
                print "You have " + str(255 - lastval[0]) + " auto-increments id left."

        elif (reqtypes[i] == "smallint(5) unsigned" or reqtypes[i] == "smallint(6)" or reqtypes[i] == "smallint(6) signed"):
            slkmsg = slkmsg + "\n" + reqtables[i] + "=> smallint" + "\n"
            print "\n"
            print reqtables[i] + "=> smallint"
            cur.execute("SELECT max(id) FROM " + reqtables[i])
            lastval = cur.fetchone()
            slkmsg = slkmsg + "Current auto-increment value of this table " + str(lastval[0]) + "\n"
            print "Current auto-increment value of this table " + str(lastval[0])
            if(str(lastval[0]) == 'None'):
                slkmsg = slkmsg + "You are having 65535 auto-increment id's left" + "\n"
                print "You are having 65535 auto-increment id's left" 
            elif(lastval[0] > 65535):
                slkmsg = slkmsg + "Alert!!! This table can't have more auto-increment id's." + "\n"
                print "Alert!!! This table can't have more auto-increment id's."
            elif(lastval[0] == 65535):
                slkmsg = slkmsg + "Caution!! You are having only 1 auto-incremnt id left." + "\n"
                print "Caution!! You are having only 1 auto-incremnt id left."
            else:
                slkmsg = slkmsg + "You have " + str(65535 - lastval[0]) + " auto-increments id left." + "\n"
                print "You have " + str(65535 - lastval[0]) + " auto-increments id left."
            
        elif (reqtypes[i] == "mediumint(8) unsigned" or reqtypes[i] == "mediumint(9)" or reqtypes[i] == "mediumint(9) signed"):
            slkmsg = slkmsg + "\n" + reqtables[i] + "=> mediumint" + "\n"
            print "\n"
            print reqtables[i] + "=> mediumint"
            cur.execute("SELECT max(id) FROM " + reqtables[i])
            lastval = cur.fetchone()
            slkmsg = slkmsg + "Current auto-increment value of this table " + str(lastval[0]) + "\n"
            print "Current auto-increment value of this table " + str(lastval[0])
            if(str(lastval[0]) == 'None'):
                slkmsg = slkmsg + "You are having 16777215 auto-increment id's left" + "\n"
                print "You are having 16777215 auto-increment id's left" 
            elif(lastval[0] > 16777215):
                slkmsg = slkmsg + "Alert!!! This table can't have more auto-increment id's." + "\n"
                print "Alert!!! This table can't have more auto-increment id's."
            elif(lastval[0] == 16777215):
                slkmsg = slkmsg + "Caution!! You are having only 1 auto-incremnt id left." + "\n"
                print "Caution!! You are having only 1 auto-incremnt id left."
            else:
                slkmsg = slkmsg + "You have " + str(16777215 - lastval[0]) + " auto-increments id left." + "\n"
                print "You have " + str(16777215 - lastval[0]) + " auto-increments id left."
        elif (reqtypes[i] == "bigint(20) unsigned" or reqtypes[i] == "bigint(21)" or reqtypes[i] == "bigint(21) signed"):
            slkmsg = slkmsg + "\n" + reqtables[i] + "=> bigint" + "\n"
            print "\n"
            print reqtables[i] + "=> bigint"
            cur.execute("SELECT max(id) FROM " + reqtables[i])
            lastval = cur.fetchone()
            slkmsg = slkmsg + "Current auto-increment value of this table " + str(lastval[0]) + "\n"
            print "Current auto-increment value of this table " + str(lastval[0])
            if(str(lastval[0]) == 'None'):
                slkmsg = slkmsg + "You are having 18446744073709551615 auto-increment id's left" + "\n"
                print "You are having 18446744073709551615 auto-increment id's left" 
            elif(lastval[0] > 18446744073709551615):
                slkmsg = slkmsg + "Alert!!! This table can't have more auto-increment id's." + "\n"
                print "Alert!!! This table can't have more auto-increment id's."
            elif(lastval[0] == 18446744073709551615):
                slkmsg = slkmsg + "Caution!! You are having only 1 auto-incremnt id left." + "\n"
                print "Caution!! You are having only 1 auto-incremnt id left."
            else:
                slkmsg = slkmsg + "You have " + str(18446744073709551615 - lastval[0]) + " auto-increments id left." + "\n"
                print "You have " + str(18446744073709551615 - lastval[0]) + " auto-increments id left."
  
  #sending alerts to slacks
  d = dict()
  d['text'] = slkmsg
  requests.post(slack_url, data=json.dumps(d))
  

    
except MySQLdb.Error, e:
  print e

  
