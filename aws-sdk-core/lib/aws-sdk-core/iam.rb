Aws.add_service(:IAM, {
  api: File.join(Aws::API_DIR, 'IAM.api.json'),
  docs: File.join(Aws::API_DIR, 'IAM.docs.json'),
  paginators: File.join(Aws::API_DIR, 'IAM.paginators.json'),
  resources: File.join(Aws::API_DIR, 'IAM.resources.json'),
})
