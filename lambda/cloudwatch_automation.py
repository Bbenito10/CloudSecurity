import boto3

def lambda_handler(event, context):
    cloudwatch = boto3.client('cloudwatch')
    sns = boto3.client('sns')

    # Example: Create CloudWatch alarm
    cloudwatch.put_metric_alarm(
        AlarmName='HighCPUUsage',
        MetricName='CPUUtilization',
        Namespace='AWS/EC2',
        Statistic='Average',
        Period=300,
        Threshold=70,
        ComparisonOperator='GreaterThanThreshold',
        EvaluationPeriods=2,
        AlarmActions=[
            'arn:aws:sns:us-east-1:123456789012:NotifyMe'
        ]
    )

    return {
        'statusCode': 200,
        'body': 'CloudWatch alarm created.'
    }
