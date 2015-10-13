# same as above, expect you must pass `encrypted: true`
resp = ec2.copy_snapshot({
    source_region: source_region,
    source_snapshot_id: source_snapshot_id,
    encrypted: true, # required for encrypted snapshots
})
