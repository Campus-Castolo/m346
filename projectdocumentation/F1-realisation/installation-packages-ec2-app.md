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


    scp -i .\Ragnarok.pem .\Silinka.pem  ubuntu@ec2-3-211-52-37.compute-1.amazonaws.com:/home/ubuntu/keys

Now connect to your EC2 web-server instance.

<details><summary><h4>Note</h4></summary>

This only works if you already have a ***folder named keys*** on your web server instance

</details>

## Installation Packages
Once your connected to your AWS EC2 Instance you must install your software packages.

#### **updating and upgrading package manager**
The first thing you'll need to do is to ensure that you always download the latest software. This can be done by entering the following commands:

    sudo apt update
    sudo apt upgrade

#### **installing the python3-pip**
Install the necessary package to run python. This will ensure that you can download your required packages is running properly. 

    sudo apt install python3-pip

#### **installing the required packages with pip**
With the previous downloaded package you can now download python packages/libraries. You'll need the following packages, to ensure that your script can run as intended, this you can do with the following command:

    pip3 install flask mysql-connector-python flask-cors

#### **coding and activating your script**
In my case I coded my script before hand. To see the script you can look into it here --> [📄Flask Backend](../../projectfiles/app/app.py)

Also to run your python script or in this case your backend you'll need to activate or give your script execution rights. You can do this by executing the command:

    chmod +x your_flask_app.py






