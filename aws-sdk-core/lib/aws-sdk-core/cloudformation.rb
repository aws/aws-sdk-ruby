Aws.add_service(:CloudFormation, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudFormation.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudFormation.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'CloudFormation.paginators.json'),
})
