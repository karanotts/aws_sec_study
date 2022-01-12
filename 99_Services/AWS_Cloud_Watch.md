# AWS CloudWatch

Ingestion, storage and management of <strong>metrics</strong>.

Public Service (public endpoints) - usable from AWS or on-premise.

Agent or/and API integration. 

Integrations: AWS services, Unified CloudWatch Agent, Development Kit for AWS

- <strong>Namespace</strong>:
    - a container for CloudWatch metrics
    - metrics in different namespaces are isolated from each other
    - AWS reserved: `AWS/service`, ie. `AWS/EC2` `AWS/Lambda`
- <strong>Metrics</strong> - time ordered datapoints:
    - <strong>datapoints</strong>:
        - timestamp
        - value
            - dimensions:
                - separate datapoints for different perspectives within the same metric (ie. CPU utilisation from 3 different EC2s)
                `CPUUtilization Name=InstanceId, Value=i-11111111`

- Alarms:
    - linked to metrics
    - raise actions on metric criterias ("if this then that")


<br>

<strong>Resolution</strong> (granularity): Standard 60s, High 1s

<strong>Retention</strong> - depends on granularity, the higher granularity the shorter the retention

<strong>Statistic</strong> - aggregation (Min, Max, Sum, Avg)

<br>


## CloudWatch Logs
- Ingestion
    - from AWS service, On-prem, IoT, or application (req. agent)
    - <strong>log events</strong>: timestamp + raw message
    - <strong>log streams</strong>: sequence of log events from same source
    - <strong>log group</strong>: collection of log streams
        - can have permissions applied to
        - can be encrypted
        - configure retention settings
        - apply metric filters to filter out events
        - export to S3 (not real time, up to 12h)
- Subscription
    - apply to log groups

## CloudWatch Events and EventBridge
Near real time event stream.
- IF THIS THEN THAT concept

Default event bus for the account:
- only one in CWEvents
- additional in EventBridge
<br><br>
- Event Pattern Rule
- Schedule (cron) Rule