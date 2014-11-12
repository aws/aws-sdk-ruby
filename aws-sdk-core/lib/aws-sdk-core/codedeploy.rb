Aws.add_service(:CodeDeploy, {
  api: File.join(Aws::API_DIR, 'CodeDeploy.api.json'),
  docs: File.join(Aws::API_DIR, 'CodeDeploy.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CodeDeploy.paginators.json'),
})
