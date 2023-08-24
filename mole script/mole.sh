# update instance 
yum update -y
# instll apache
yum install httpd -y
# cd into html directory 
cd var/www/html

# from html directory , download code from repo/s3
wget https://github.com/DeePeprah2/mole-site1/archive/refs/heads/main.zip

# unzip main.zip
unzip main.zip 

# copy code from all the path to html
cp -r mole-site1-main/mole-site1-main2/* /var/www/html
# remove main.zip and any un wanted folder
rm -rf main.zip
rm -rf mole-site1.git  mole-site1-main

 # strt and enable httpd from the html directory 
systemctl start httpd
systemctl enable httpd