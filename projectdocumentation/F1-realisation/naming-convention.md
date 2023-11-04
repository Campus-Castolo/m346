# Naming convention of AWS ressources (instances etc.)

|           | Use Case   | Object | Firm  | Subnet Type | AWS-Network |
|-----------|------------|--------|-------|-------------|-------------|
| example 1 | web-server | ec2    | dhllc | public      | us-east-1a  |
| example 2 | app-server | ec2    | dhllc | private     | us-east-1a  |
| example 3 | db-server  | ec2    | dhllc | private     | us-east-1a  |

Note that I wont add each and every service in here just because they are there. This only serves the purpose of understanding how I named the services.

# Naming convention of AWS SG

|         | security group | firm  | Subnet Type | AWS-Network |
|---------|----------------|-------|-------------|-------------|
| example | sg             | dhllc | public      | us-east-1*  |
| example | sg             | dhllc | private     | us-east-1*  |