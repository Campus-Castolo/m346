# Installation Packages

## Connect over EC2 Instance
Now as for the Web-Server wich has a direct connection with the internet, this instance does not possess such a connection.
So there for we need to utilize the Web-Server as a kind of intermediare between the external WAN and the internal WAN.
This can be done the following way:

#### **Step 1: SCP your Key into the WebServer**
When you setup your App-Server EC2 instance you created a new private key. This key is now in your download folder.
Open your Terminal and type the following command:

```bash
cd Downloads
```

This command will bring you into your downloads folder. Now type the following command to get your private key of your app-server onto the web-server.


    scp -i .\Ragnarok.pem .\ochnun.pem  ubuntu@ec2-3-211-52-37.compute-1.amazonaws.com:/home/ubuntu/keys

Now connect to your EC2 web-server instance. And then go into your `keys` folder and then connect to your db-server

<details><summary><h4>Note</h4></summary>

This only works if you already have a ***folder named keys*** on your web server instance

</details>

## Installation Packages
Once your connected to your AWS EC2 Instance you must install your software packages.

#### **updating and upgrading package manager**
The first thing you'll need to do is to ensure that you always download the latest software. This can be done by entering the following commands:

    sudo apt update
    sudo apt upgrade

#### **installing MySQL Server**
Install the necessary package to run python. This will ensure that you can download your required packages is running properly. 

    sudo apt install mysql-server

#### **Creating a user**
With the mysql-server downloaded you can now connect to the mysql server by using the following command:

    sudo mysql

After your connected to your mysql server, you begin by creating a user in my case I created a user with the name `dhllc-adm` and the password `Abcd12s8rkds!`. You can do this with the following commands

    CREATE USER 'dhllc-adm'@'localhost' IDENTIFIED BY 'Abcd12s8rkds!';
    GRANT ALL PRIVILEGES ON your_database_name.* TO 'dhllc-adm'@'localhost';
    FLUSH PRIVILEGES;

With this the script that is running on the `app-server` it should be able to access your DB-Server.
