# Cloud based infrastructure for Doupont Holdings LLC

## [KNs](KN/README.md)

## Introduction

### [Projectcompetency matrix](projectdocumentation/!0-introduction/competencies.md)
Gives an insight on the competencies I need to fullfil.

### [Who is Doupont Holdings](projectdocumentation/!0-introduction/history-doupont-holdings.md#who-is-doupont-holdings-llc)
Gives an insight who Doupont Holdings is and where they come from.

### [Values of Doupont Holdings](projectdocumentation/!0-introduction/history-doupont-holdings.md#what-are-the-values-of-doupont-holdings)
Gives an insight into the core-values of Doupont Holdings.

### [Business Proposal](projectdocumentation/!0-introduction/proposal-doupont-holdings.md)
The E-Mail sent by the Head of Engineering at Doupont Holdings LLC, stating that Doupont Holdings is in need of a migration from some on-prem services.



## A1 - Analysis

### [General Analysis of Doupont Holdings LLC](projectdocumentation/A1-analysis/analysis-doupont-holdings.md#general-analysis-of-the-firm)
Gives an insight how Doupont Holdings LLC is built.

### [Requirements of Doupont Holdings LLC](projectdocumentation/A1-analysis/analysis-doupont-holdings.md#requirements-for-their-cloud-platform)
Gives an insight what requirements Doupont Holdings LLC is expecting from the cloud plattform.

### [Migration of DHLLC Applications](projectdocumentation/A1-analysis/analysis-doupont-holdings.md#applications-to-migrate-to-the-cloud)
Gives an insight which DHLLC Applications could be migrated to the cloud.



## B1 - Evaluation servicemodels

### [General explaination of service models](projectdocumentation/B1-servicemodel/evaluation-of-servicemodel.md#servicemodels)
Gives an rough overview over the different service models

### [Positives and Negatives for Doupont Holdings LLC](projectdocumentation/B1-servicemodel/evaluation-of-servicemodel.md#servicemodels-benefits-and-drawbacks-for-doupont-holdings-llc)
Gives an insight on the ups and downs for Doupont Holdings LLC for each service model

### [Why these Servicemodels](projectdocumentation/B1-servicemodel/evaluation-of-servicemodel.md#reasons-why-paas)
Gives an insight on why I came to this conclusion



## C1 - Cost Evaluation

### [AWS-Service Cost Estimate](projectdocumentation/C1-cost-analysis/aws-estimate.pdf)
Gives an insight on the costs of the cloud plattform



## D1 - Market Analysis

### [Market Analysis](projectdocumentation/D1-market-analysis/reasoning.md)
Comparision between Azure and AWS



## E1 - Conceptualisation

### [Cloud enviornment concept](projectdocumentation/E1-conceptualisation/cloud-env-concept.md#cloud)
Gives insight on the structure of the cloud plattform.

### [Intended funcionality](projectdocumentation/E1-conceptualisation/cloud-env-concept.md#functionality)
Gives insight on how this concept should function.

### [Cloud service accessibility](projectdocumentation/E1-conceptualisation/cloud-env-concept.md#accessibility)
Gives insight on how customers and developers can interact with the cloud plattform.



## F1 - Realisation

### [Setting up VPC](projectdocumentation/F1-realisation/infrastructure-setup.md#setting-up-vpc)
Shows where to create VPC

### [Creating VPC and Subnet](projectdocumentation/F1-realisation/infrastructure-setup.md#creating-vpc-and-subnet)
Shows how to create VPC and Subnet

### [Naming Convention SG](projectdocumentation/F1-realisation/naming-convention.md#naming-convention-of-aws-sg)
Gives Insight on the naming convention for the security groups of doupont holdings cloud.

### [Creating Security Group](projectdocumentation/F1-realisation/security-group-setup.md#creating-a-security-group)
Shows how to create a security group.

### [Naming Convention EC2](projectdocumentation/F1-realisation/naming-convention.md#naming-convention-of-aws-ressources-instances-etc)
Gives Insight on the naming convention for the instances of doupont holdings cloud.

### [Setting up EC2]()
Shows how to create a ec2 instance.

### [Installing Packages Web EC2](projectdocumentation/F1-realisation/installation-packages-ec2-web.md)
Shows how to configure an ec2 instance to be a web-server by utilizing apache2.

### [Associating EIP](projectdocumentation/F1-realisation/eip-setup.md)
Shows how to create and associate EIP


### [Configuring EC2](projectdocumentation/F1-realisation/infrastructure-setup.md)
Shows the configruation for each ec2

### [Configuring EC2 Web](projectdocumentation/F1-realisation/installation-packages-ec2-web.md)
Shows the packages for the ec2 web instance

### [Configuring EC2 App](projectdocumentation/F1-realisation/installation-packages-ec2-app.md)
Shows the packages for the ec2 app instance

### [Configuring EC2 DB](projectdocumentation/F1-realisation/installation-packages-ec2-db.md)
Shows the packages for the ec2 db instance

### [Check if Application is running](projectdocumentation/F1-realisation/proof.md)
Shows proof that it works

## J1 - Monitoring

#### [CloudWatch](projectdocumentation/J1-monitoring/cloudwatch.md)
Shows how to configure AWS Cloudwatch

## K1 - Scaling

#### [Scaling LoadBalancer](projectdocumentation/K1-scaling/loadbalancer.md)

#### [Target Group](projectdocumentation/K1-scaling/targetgroup.md)

#### [Auto Scaler](projectdocumentation/K1-scaling/autoscaler.md)

## Reflection

To be completely honest, I've gained a wealth of knowledge throughout this course, mastering skills like setting up Virtual Private Clouds (VPC) and creating EC2 instances, among other things. However, there has been one persistent frustration that has hindered my progress – the lack of proper permissions. This obstacle has forced me to constantly seek out workarounds, build things from the ground up, and find creative solutions. Unfortunately, there were situations where even employing a cloud-init file couldn't resolve the issue.

For instance, one particular challenge that baffled me was the limitation placed on creating our own Lambda functions for the "Backup" module. Similarly, the restriction on generating our own certificates for the load balancer left me perplexed. I couldn't comprehend why these restrictions existed. The same puzzlement arose with the global accelerator module, where our hands were tied.

What I earnestly hope for the next module is a more permissive approach that grants students greater freedom, minimizing the need for workarounds. Additionally, early and clear communication of upcoming activities that can positively impact our grades would be greatly appreciated.
