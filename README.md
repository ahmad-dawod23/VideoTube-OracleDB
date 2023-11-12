# VideoTube-OracleDB
This is a YouTube clone made in PHP by Reece Keeny in his Udemy course which I took long ago and coded it with him. I recently got interested in learning Oracle DB and decided to convert it to use Oracle instead of MySQL.

To do list:
1) Verify functionality on Linux and Docker.
2) Add a working docker compose file.
3) Add an SQL file that creates the database and seeds data into it.
4) Fix bugs with subscriber count and other small things.
5) Add new features?


How to deploy:
1) You can deploy this on IIS with FastCGI handler or you can use Apache if you want to use linux.
2) for Linux or Docker please delete the includes/config.php file and the includes\classes\VideoProcessor.php and replace them with their Linux counterparts (which are included).
3) Install Oracle client and create an ODBC instance. The OCI driver never worked for me at all in Windows (Not sure why).
