mongo <<EOF
use $MONGO_INITDB_DATABASE
var rootUser = '$MONGO_INITDB_ROOT_USERNAME'
var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD'
var admin = db.getSiblingDB('admin')
admin.auth(rootUser, rootPassword)

db.createUser({
  user: user,
  pwd: passwd,
  roles: ["readWrite"]
})
EOF
