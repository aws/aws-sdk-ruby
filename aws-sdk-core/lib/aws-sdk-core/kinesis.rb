Aws.add_service(:Kinesis, {
  api: File.join(Aws::APIS_DIR, 'Kinesis.api.json'),
  docs: File.join(Aws::APIS_DIR, 'Kinesis.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'Kinesis.paginators.json'),
})
