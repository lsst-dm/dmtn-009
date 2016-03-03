#!/usr/bin/python

# LSST Data Management System
# Copyright 2016 AURA/LSST.
#
# This product includes software developed by the
# LSST Project (http://www.lsst.org/).
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the LSST License Statement and
# the GNU General Public License along with this program.  If not,
# see <http://www.lsstcorp.org/LegalNotices/>.

"""
A program to create tables with different column schemes
to test vertical partitioning join performance.

@author  Vaikunth Thukral, SLAC
"""

# Imported modules
import MySQLdb
from warnings import filterwarnings
filterwarnings("ignore", category=MySQLdb.Warning)

# MySQL connection parameters
dbHost  = "localhost"
dbPort  = 3306
dbUser  = "ubuntu"
dbPass  = ""

#########################################################################
# Database, table and column definitions (DBs must already be created).
# The first 4 DBs are for the MyISAM engine and the last 4 for InnoDB.
# Settings can be changed with parameter <default-storage-engine>.
#########################################################################
dbNames = ["mysqltest200", "mysqltest10_20", "mysqltest20_10", "mysqltest50_4",
           "mysqltestINNODB", "mysqltestINNO10", "mysqltestINNO20", "mysqltestINNO50"]

dbTabs  = {"mysqltest200":1,
           "mysqltest10_20":10,
           "mysqltest20_10":20,
           "mysqltest50_4":50,
           "mysqltestINNODB":1,
           "mysqltestINNO10":10,
           "mysqltestINNO20":20,
           "mysqltestINNO50":50}

dbCols  = {"mysqltest200":201,
           "mysqltest10_20":21,
           "mysqltest20_10":11,
           "mysqltest50_4":5,
           "mysqltestINNODB":201,
           "mysqltestINNO10":21,
           "mysqltestINNO20":11,
           "mysqltestINNO50":5}

# Loop over all DBs
for dbName in dbNames:
    con = MySQLdb.connect(host=dbHost,
                          port=dbPort,
                          user=dbUser,
                          passwd=dbPass,
                          db=dbName)
    cursor = con.cursor()
    
    # Loop over all tables
    for tab in range(0,dbTabs[dbName]):

        # Check if table already exists
        cursor.execute("DROP TABLE IF EXISTS MYSQL_COLUMNS_"+str((tab+1)))

        # Construct CREATE TABLE statement
        sql = "CREATE TABLE MYSQL_COLUMNS_"+str((tab+1))+" (PRIM_IDX BIGINT PRIMARY KEY"

        for col in range(1,dbCols[dbName]):
            sql += ",SEC_COL_"+str(col)+" INT"
        sql += ")"
        cursor.execute(sql)

    # Display created tables
    cursor.execute("USE "+dbName)
    cursor.execute("SHOW TABLES")
    ret = cursor.fetchall()
    print ret
    
    cursor.close()
    con.close()
