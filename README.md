# VideoTube-OracleDB
This is a YouTube clone made in PHP by Reece Keeny in his Udemy course which I took long ago and coded it with him. I'm learning Oracle DB Administration at the moment and decided to convert it to use Oracle instead of MySQL.
Deployment of this project assumes a level of knowledge in Oracle, You need to create a new user, grant them premissions and if you're using a pluggable database provide the correct container permissions too.
MySQL Version: https://github.com/ahmad-dawod23/DevOps-workshop

To do list:
1) Verify functionality on Linux.
2) ~~Add an SQL file that creates the database and seeds data into it, so the whole database can be deployed from it.~~ Done. DBCreator.sql seed file added.
3) Fix bugs with subscriber count and other small things.
4) ~~Add a working docker file.~~ Dockerfile updated with oracle client support.


How to deploy:
1) You can deploy this on windows' IIS with FastCGI handler or you can use Apache.
2) Go to includes/config.php and add your correct database user and password.
3) For Linux, please delete the includes/config.php file and the includes\classes\VideoProcessor.php and replace them with their Linux counterparts (which are included).
4) Install Oracle client and create an ODBC instance. The OCI driver never worked for me at all in Windows (Not sure why).
5) Build the docker image and deploy on Docker.
