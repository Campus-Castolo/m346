# Naming conevntions

## Naming convention of AWS ressources (instances etc.)

|             | Use Case   | Object | Firm  | Subnet Type  | AWS-Network |
|-------------|------------|--------|-------|--------------|-------------|
| example I   | web-server | ec2    | dhllc | public*      | us-east-1a  |
| example II  | app-server | ec2    | dhllc | private*     | us-east-1a  |
| example III | db-server  | ec2    | dhllc | private*     | us-east-1a  |

<details>
<summary>Note</summary>
I wont add each and every service in here just because they are there. This only serves the purpose of understanding how I named the services.
<br><br>
Also dhllc in this refers to the name of doupont holdings llc
</details>


## Naming convention of AWS SG

|           | security group | firm  | Subnet Type | AWS-Network |
|-----------|----------------|-------|-------------|-------------|
| example I | sg             | dhllc | public      | us-east-1*  |
| example II| sg             | dhllc | private     | us-east-1*  |

## Naming convention of AWS launch template

|            | launch template | intended use | firm  | Type    |
|------------|-----------------|--------------|-------|---------|
| example I  | lautmp          | ec2          | dhllc | public  |
| example II | lautmp          | ec2          | dhllc | private |


## Naming convention of AWS Target Group

|             | Target Group | object | intended use | firm  | Type    |
|-------------|--------------|--------|--------------|-------|---------|
| example I   | trgp         | ec2    | web          | dhllc | public  |
| example II  | trgp         | ec2    | app          | dhllc | private |
| example III | trgp         | ec2    | db           | dhllc | private |