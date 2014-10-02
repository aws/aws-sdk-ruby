Aws.add_service(:CloudFormation, {
  api: File.join(Aws::APIS_DIR, 'CloudFormation.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CloudFormation.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'CloudFormation.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'CloudFormation.resources.json'),
  waiters: File.join(Aws::APIS_DIR, 'CloudFormation.waiters.json'),
})
