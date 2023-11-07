# Setting up EC2 Instances
In this document you will get to know what a ec2 instance is and what it can do.

## What is an EC2 Instance?

An EC2 instance is a fundamental building block of Amazon Web Services (AWS). It stands for Elastic Compute Cloud and is essentially a virtual server in the cloud. EC2 instances come in various sizes and configurations, each optimized for specific computing tasks, and they provide scalable and on-demand compute capacity.

## What does an EC2 instance do?

EC2 instances are pretty versatile in the world of cloud computing:

1. **Running Applications**: You can use them to run all sorts of applications – whether it's a website, a database, machine learning software, or data analysis tools. There's an instance type to match the specific needs of your app.

2. **Scaling Up or Down**: What's cool about EC2 is that you can have more instances when your website gets super busy and then scale down when it's quieter. It's like having the perfect amount of staff in a store during a sale.

3. **Diverse Jobs**: These instances are like the Swiss Army knives of the cloud world. Some are great at crunching numbers, some have loads of memory for apps that need it, and others are like turbo-charged for graphics and AI tasks.

4. **Customization**: You get to choose stuff like what type of computer it pretends to be (the operating system), how safe it is (security settings), what software goes on it, and how it talks to other computers. It's like having your own customizable computer.

5. **Staying Online**: AWS offers features to make sure your apps are always available. If an instance goes haywire, they'll replace it automatically, so your website doesn't crash.

6. **Keeping Costs in Check**: You pay for what you use, down to the second. And there are tricks like getting discounts or using cheaper instances if you're smart about it.

7. **Storing Data**: These instances can be connected to different storage options – like a hard drive (Elastic Block Store) or a file cabinet (S3). They help you manage your app's data easily.

In a nutshell, EC2 instances are like your cloud-based computers. They're flexible, cost-effective, and can do just about any computing job you throw at them, making them a core part of hosting apps, processing data, and supporting various tasks in the AWS world.

## How to create one

In this video you can see how to create an ec2 isntance. In this case it would be the ec2 instance for the database. Which communicates with the backend.

![create instance](../images/ec2-instance-setup.gif)

## Web
The Web-Server is here to host the frontend of Doupont Holdings. Down below you can see the information related to the ec2 instance ***web-server-ec2-dhllc-public1-us-east-1a***.

**General Information**
|   | Name                                    | Instance ID         | Instance Type | Public IPv4 DNS                            | Elastic IP     | Private IP | Key Name | Security Group                         | Monitoring |
|---|-----------------------------------------|---------------------|---------------|--------------------------------------------|----------------|------------|----------|----------------------------------------|------------|
|   | web-server-ec2-dhllc-public1-us-east-1a | i-08da863d394a99874 | t2.small      | ec2-34-194-253-166.compute-1.amazonaws.com | 34.194.253.166 | 10.0.0.10  | Ragnarok | security-group-dhllc-public-us-east-1* |            |

**Configuration Information**
You can see further Information to the Configuration of the ec2 web-server instance at the following document: --> [📄Installation PKG ec2](installation-packages-ec2-web.md)

## App
The App-Server is here to act as the backend to the frontend of Doupont Holdings Website. Down below you can see the information related to the ec2 instance **app-server-ec2-dhllc-private1-us-east-1a**.

**General Information**
| Name                                     | Instance ID         | Instance Type | Public IPv4 DNS | Elastic IP | Private IP  | Key Name | Security Group                          | Monitoring |
|------------------------------------------|---------------------|---------------|-----------------|------------|-------------|----------|-----------------------------------------|------------|
| app-server-ec2-dhllc-private1-us-east-1a | i-060fb073d127f8385 | t2.small      | -               | -          | 10.0.128.10 | Silinka  | security-group-dhllc-private-us-east-1* | disabled   |

**Configuration Information**
You can see further Information to the Configuration of the ec2 app-server instance at the following document: --> [📄Installation PKG ec2](installation-packages-ec2-app.md)

## Database
The DB-Server is here to serve the data to the backend which then in turn serves it to the frontend. Down below you can see the information related to the ec2 instance **db-server-ec2-dhllc-private1-us-east-1a**.

**General Information**
| Name                                    | Instance ID         | Instance Type | Public IPv4 DNS | Elastic IP | Private IP  | Key Name | Security Group                          | Monitoring |
|-----------------------------------------|---------------------|---------------|-----------------|------------|-------------|----------|-----------------------------------------|------------|
| db-server-ec2-dhllc-private1-us-east-1a | i-0cfa29cc5f716b02f | t2.small      | -               | -          | 10.0.128.20 | ochnun   | security-group-dhllc-private-us-east-1* | disabled   |

**Configuration Information**
You can see further Information to the Configuration of the ec2 db-server instance at the following document: --> [📄Installation PKG ec2](installation-packages-ec2-db.md)