sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install libtomcat9-java -y
sudo apt-get update -y
sudo apt-get install tomcat9-admin tomcat9-common -y
sudo apt-get install tomcat9 -y
cd /var/lib/tomcat9/webapps/
sudo wget https://bucket-create-2211.s3.us-east-2.amazonaws.com/ion.war
sudo systemctl start tomcat9 