Aws.add_service(:SQS, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'SQS.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'SQS.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'SQS.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'SQS.resources.json'),
})
