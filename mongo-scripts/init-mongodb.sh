#!/usr/bin/env bash
echo "INITIALIZING MONGO..."

# mongo --eval "use AppService"
# mongo use AppService

# echo "DB CREATED..."

mongo AppService --eval "db.createUser({ user: 'appuser', pwd: 'appuserpassword', roles: [{ role: 'readWrite', db: 'AppService' }]});db.createUser({ user: 'administrator', pwd: 'appadminpassword', roles: [{ role: 'userAdminAnyDatabase', db: 'admin'}]})"

# mongo admin --host localhost:56700 -u skillUpAuthAdminMongo -p 5k!llUp*4uthzM0ngoDb-771
# mongo admin --host localhost:56700 \
#       -u skillUpAuthAdminMongo -p 5k!llUp*4uthzM0ngoDb-771 \
#       --eval "db.createUser({ user: 'appuser', pwd: 'appuserpassword', roles: [{ role: 'readWrite', db: 'AppService' }]});"

# echo "MONGO CONECTED..."
echo "USER CREATED..."
