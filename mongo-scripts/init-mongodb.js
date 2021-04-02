
db.createUser(
  {
    user: 'authuser',
    pwd: 'authuserpassword',
    roles: [
      {
        role: 'readWrite',
        db: 'authServiceDev',
      }
    ],
  }
);

db.createUser(
  {
    user: 'authadmin',
    pwd: 'authadminpassword',
    roles: [
      {
        role: 'userAdminAnyDatabase',
        db: 'admin',
      },
    ],
  }
)

// use sessionsDev;
var db = db.getSiblingDB('sessionsDev');

db.createUser(
  {
    user: 'sessionuser',
    pwd: 'sessionuserpassword',
    roles: [
      {
        role: 'readWrite',
        db: 'sessionsDev',
      }
    ],
  }
);