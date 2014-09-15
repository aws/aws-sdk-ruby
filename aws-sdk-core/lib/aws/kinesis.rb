Aws.add_service(:Kinesis, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'Kinesis.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'Kinesis.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'Kinesis.paginators.json'),
})
