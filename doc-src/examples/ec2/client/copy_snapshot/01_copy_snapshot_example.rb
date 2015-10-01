source_snapshot_id = 'snapshot-id'
source_region = 'us-east-1'
target_region = 'us-west-2'

# You must configure your EC2 client for the destination region to copy
ec2 = Aws::EC2::Client(region: target_region)

resp = ec2.copy_snapshot({
    source_region: source_region,
    source_snapshot_id: source_snapshot_id,
})

snapshot_id = resp.snapshot_id

ec2.wait_until(:snapshot_completed, snapshot_ids: [snapshot_id])
