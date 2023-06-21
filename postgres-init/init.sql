CREATE USER myUser;
ALTER USER myUser 
	WITH PASSWORD 'myUser';
CREATE DATABASE myDatabase;
GRANT 
	ALL PRIVILEGES ON DATABASE 
		myDatabase TO myUser;
ALTER USER myUser 
	WITH createdb;
ALTER USER myUser
	WITH deletedb;
