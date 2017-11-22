############### Step 1: Import the public key used by the package management system.
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

############### Step 2: Create a list file for MongoDB.
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

############### Step 3: Reload local package database.
sudo apt-get update

############### Step 4: Install the MongoDB packages.
# Install the latest stable version of MongoDB.
sudo apt-get install -y mongodb-org

########################################
##### Run MongoDB Community Edition
########################################
#### If you change the user that runs the MongoDB process, 
#### you must modify the access control rights to the /var/lib/mongodb and /var/log/mongodb directories 
#### to give this user access to these directories.

############### Step 1: Start MongoDB.
sudo service mongod start

############### Step 2: Verify that MongoDB has started successfully
# Verify that the mongod process has started successfully by checking the contents 
# of the log file at /var/log/mongodb/mongod.log for a line reading : [initandlisten] waiting for connections on port <port>

############### Step 3: Stop MongoDB.
# sudo service mongod stop

############### Step 4: Restart MongoDB.
# sudo service mongod restart

# Step 5: Begin using MongoDB.
# https://docs.mongodb.com/manual/#getting-started
# https://docs.mongodb.com/manual/#getting-started


########################################
##### Uninstall MongoDB Community Edition
########################################
##### Step 1: Stop MongoDB.
# sudo service mongod stop

# Step 2: Remove Packages.
# sudo apt-get purge mongodb-org*

# Step 3: Remove Data Directories.
# sudo rm -r /var/log/mongodb
# sudo rm -r /var/lib/mongodb