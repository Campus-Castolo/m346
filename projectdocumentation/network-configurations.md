# VPC Konfigurations
Configurations I made regarding the VPC

## VPC Subent
![Alt text](images/image.png)

---

| Subnet        | Available IPs | Region     | Type    | name-type | Services                                      |
|---------------|---------------|------------|---------|-----------|-----------------------------------------------|
| 10.0.0.0/20   | 4091          | us-east-1a | public  | public-1  | doupont-holdings-ec2-webserver-us-east-1a     |
| 10.0.16.0/20  | 4091          | us-east-1b | public  | public-2  | doupont-holdings-ec2-webserver-us-east-1b     |
| 10.0.128.0/20 | 4091          | us-east-1a | private | private-1 | doupont-holdings-ec2-*SERVER TYPE*-us-east-1a |
| 10.0.144.0/20 | 4091          | us-east-1b | private | private-2 | doupont-holdings-ec2-*SERVER TYPE*-us-east-1b |