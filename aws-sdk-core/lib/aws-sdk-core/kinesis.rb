Aws.add_service(:Kinesis, {
  api: File.join(Aws::API_DIR, 'Kinesis.api.json'),
  docs: File.join(Aws::API_DIR, 'Kinesis.docs.json'),
  paginators: File.join(Aws::API_DIR, 'Kinesis.paginators.json'),
  waiters: File.join(Aws::API_DIR, 'Kinesis.waiters.json'),
})
