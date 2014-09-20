Aws.add_service(:SNS, {
  api: File.join(Aws::APIS_DIR, 'SNS.api.json'),
  docs: File.join(Aws::APIS_DIR, 'SNS.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'SNS.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'SNS.resources.json'),
})
