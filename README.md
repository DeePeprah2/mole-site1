
# DevOps Project Readme

## Project Overview

This project involves the deployment of a static HTML web application on AWS infrastructure using various services and resources. The architecture is designed for high availability, fault tolerance, and security. Below is an overview of the key components and steps involved in the deployment.

## Architecture Overview

![Architecture Diagram](link-to-your-image)

1. **VPC with Public and Private Subnets (2 Availability Zones):** The infrastructure is set up in a Virtual Private Cloud (VPC) with two availability zones for increased availability and fault tolerance.

2. **Internet Gateway:** An Internet Gateway is employed to enable communication between instances in the VPC and the internet.

3. **Security Groups:** Security groups are utilized for firewall configuration to control inbound and outbound traffic to instances.

4. **Nat Gateway:** Instances in private subnets leverage a Nat Gateway to access the internet securely.

5. **Bastion Host:** A bastion host is set up to provide secure access to resources in the private subnet.

6. **EC2 Instances for Web Hosting:** EC2 instances host the static HTML web application. These instances are configured for high availability using an Auto Scaling Group.

7. **Application Load Balancer (ALB):** An ALB is used to distribute web traffic across the Auto Scaling Group's EC2 instances in multiple availability zones.

8. **EC2 Instance Connect Endpoint:** EC2 Instance Connect Endpoint is used to connect securely to resources in both public and private subnets.

9. **Route 53:** Route 53 is utilized to register the domain name and create a record set for the web application.

10. **GitHub Repository:** The project's web files are stored in a GitHub repository.

## Deployment Steps

### Update and Install Dependencies on EC2 Instance

```bash
# Update instance
yum update -y

# Install Apache
yum install httpd -y

# Navigate to HTML directory
cd /var/www/html

# Download code from the GitHub repository
wget https://github.com/DeePeprah2/mole-site1/archive/refs/heads/main.zip

# Unzip the downloaded file
unzip main.zip

# Copy code to the HTML directory
cp -r mole-site1-main/mole-site1-main2/* /var/www/html

# Remove unnecessary files
rm -rf main.zip mole-site1.git mole-site1-main

# Start and enable HTTPD from the HTML directory
systemctl start httpd
systemctl enable httpd
```

## Conclusion

This project successfully deploys a static HTML web application on AWS, leveraging various services and best practices for security, high availability, and scalability. The provided scripts can be used to update and install the web application on an EC2 instance.

Feel free to reach out if you have any questions or need further assistance.
