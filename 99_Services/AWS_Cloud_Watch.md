# AWS CloudWatch

- Namespace:
    - a container for CloudWatch metrics
    - metrics in different namespaces are isolated from each other
- Metrics:
    - data points:
        - timestamp
        - value
            - dimensions:
                - separate datapoints for different perspectives within the same metric (ie. CPU utilisation from 3 different EC2s)

- Alarms:
    - linked to metrics
    - raise actions on metric criterias ("if this then that")


## CloudWatch Logs


## CloudWatch Events