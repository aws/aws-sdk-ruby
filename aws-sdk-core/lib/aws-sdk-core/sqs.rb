Aws.add_service(:SQS, {
  api: File.join(Aws::APIS_DIR, 'SQS.api.json'),
  docs: File.join(Aws::APIS_DIR, 'SQS.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'SQS.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'SQS.resources.json'),
})
