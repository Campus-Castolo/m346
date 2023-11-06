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



