Aws.add_service(:SNS, {
  api: File.join(Aws::API_DIR, 'SNS.api.json'),
  docs: File.join(Aws::API_DIR, 'SNS.docs.json'),
  paginators: File.join(Aws::API_DIR, 'SNS.paginators.json'),
  resources: File.join(Aws::API_DIR, 'SNS.resources.json'),
})
