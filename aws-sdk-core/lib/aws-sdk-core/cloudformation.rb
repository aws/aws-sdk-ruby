Aws.add_service(:CloudFormation, {
  api: File.join(Aws::API_DIR, 'CloudFormation.api.json'),
  docs: File.join(Aws::API_DIR, 'CloudFormation.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CloudFormation.paginators.json'),
  resources: File.join(Aws::API_DIR, 'CloudFormation.resources.json'),
})
