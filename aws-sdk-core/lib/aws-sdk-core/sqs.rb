Aws.add_service(:SQS, {
  api: File.join(Aws::API_DIR, 'SQS.api.json'),
  docs: File.join(Aws::API_DIR, 'SQS.docs.json'),
  paginators: File.join(Aws::API_DIR, 'SQS.paginators.json'),
})
