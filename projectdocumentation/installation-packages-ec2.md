# EC2 Instance packages installation

## Connect to AWS EC2 Instance over SSH

### **Step 1: Locate your .pem or .ppk file**
- First, ensure you have the .pem or .ppk file you previously generated and downloaded. If you can't find it, check your Downloads folder.

### **Step 2: Find the SSH command**

![SSH Instructions](images/ec2-ssh-connect.gif)

**Step 3: Open your Terminal**
- Once you have the SSH command, open a Terminal of your choice. You can usually find Terminal on macOS or use a program like PuTTY on Windows.
<details>
<summary>🚨Important</summary>
If you have downloaded the .ppk you must use PuTTy however if you downloaded the .pem file you can just give the relative path in the terminal.
</details>
<br>

### **Step 4: Navigate to your Downloads folder**
- In the Terminal, navigate to your Downloads folder using the following command:
  ```
  cd Downloads
  ```

### **Step 5: Connect to your EC2 Instance**
- Finally, enter the SSH command you obtained earlier. Replace "Valhalla.pem" with the name of your .pem or .ppk file and "ubuntu@ec2-3-88-72-4.compute-1.amazonaws.com" with the appropriate username and public DNS (or IP address) of your EC2 Instance:
  ```
  ssh -i "Valhalla.pem" ubuntu@ec2-3-88-72-4.compute-1.amazonaws.com
  ```

Press Enter to run the command. You may be prompted to confirm the connection by typing "yes" and then entering your passphrase if you set one during the key pair generation.

You should now be connected to your EC2 Instance over SSH. Make sure to replace "Valhalla.pem" and the EC2 Instance address with your specific key file and instance details.

## Install the necessary packages

### **Step 1 - Install Apache**
Apache is available with the default ubuntu package manager `apt`.
You can install apache by entering the following commands:

```
sudo apt update
```
This command will update the package manager to get the latest packages.

```
sudo apt install apache2 -y
```
This command will download the apache2 package and the `-y` option will accept any additional packages automatically


### **Step 2 - Adjusting the Firewall**

Here you don't need to do anything, because you already have a firewall provided by AWS. This is managed over the security groups. See here:



