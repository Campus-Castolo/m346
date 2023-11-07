# Autoscaler
In this document you will learn how to setup an autoscaler

#### Whats an autoscaler
An autoscaler, in the context of cloud computing and infrastructure management, is a service or tool that automatically adjusts the number of resources, such as virtual machines or containers, to match the current workload or demand. The primary purpose of an autoscaler is to optimize resource utilization, maintain system performance, and ensure cost-efficiency in cloud environments.

#### What does an autoscaler do.

1. **Scalability**: Autoscalers monitor the performance metrics and resource utilization of your applications or services. When they detect increased or decreased workload, they can automatically adjust the number of resources allocated to match the demand.

2. **Load Balancing**: Autoscalers often work in conjunction with load balancers to distribute traffic evenly across the newly created or terminated instances. This ensures that the application can handle varying levels of user requests without degradation in performance.

3. **Resource Optimization**: Autoscalers help optimize resource allocation by scaling out (adding more resources) during high traffic periods and scaling in (removing resources) during periods of lower demand. This prevents over-provisioning or under-provisioning of resources, saving costs.

4. **Cost Savings**: By automatically adjusting the number of resources, autoscalers help organizations save money by avoiding the need to maintain a fixed, often over-provisioned, infrastructure. Resources are allocated on-demand, minimizing idle capacity.

5. **High Availability**: Autoscalers can enhance system reliability and availability. If an instance or node fails, the autoscaler can quickly replace it with a new one to maintain service continuity.

6. **Configuration Flexibility**: Most autoscalers allow you to set custom rules and policies for scaling. You can define triggers based on specific metrics like CPU utilization, memory usage, or custom application metrics.

7. **Scheduled Scaling**: In addition to dynamic scaling, autoscalers may support scheduled scaling, which allows you to plan resource adjustments based on specific times or events, such as anticipated traffic spikes during marketing campaigns.

8. **Container Orchestration**: Autoscaling is also a crucial feature in container orchestration platforms like Kubernetes, where it automatically adjusts the number of container replicas based on demand. Kubernetes, for example, has a Horizontal Pod Autoscaler (HPA) for this purpose.

In summary, an autoscaler is a valuable component in cloud infrastructure management, ensuring that your applications and services are responsive, highly available, and cost-effective by dynamically adjusting the number of resources to meet varying workloads.

#### Creation of the autoscaler:

![autoscaler creation](../images/autoscaler.gif)

An et-voila your auto-scaling group and auto-scaler has been configured. That means if there is alot of traffic other ec2 instances just like my web-server will start since I made a custom AMI out of my webserver. 