Aws.add_service(:SNS, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'SNS.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'SNS.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'SNS.paginators.json'),
  resources: File.join(Aws::GEM_ROOT, 'apis', 'SNS.resources.json'),
})
