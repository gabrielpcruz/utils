Check here:

NEW Version of MYSQL does it this way.

In the new my-sql if the password is left empty while installing then it is based on the auth_socket plugin.

The correct way is to login to my-sql with sudo privilege.

$ sudo mysql -u root -p

And then updating the password using:

$ ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new-password';

Once this is done stop and start the mysql server.

$  sudo service mysql stop
$  sudo service mysql start



# for more details access the link above

https://www.percona.com/blog/2016/03/16/change-user-password-in-mysql-5-7-with-plugin-auth_socket/
