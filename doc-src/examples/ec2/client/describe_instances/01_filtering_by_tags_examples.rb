# filtering by tag keys "key1" or "key2"
ec2.describe_instances(filters:[{ name: 'tag-key', values: ['key1', 'key2'] }])

# filtering by tag values "value1" or "value1"
ec2.describe_instances(filters:[{ name: 'tag-value', values: ['value1', 'value2'] }])

# filtering by key and value, key equals "key1" and value equals "value1" or "value2"
ec2.describe_instances(filters:[{ name: "tag:key1", values: ['value1'] }])
