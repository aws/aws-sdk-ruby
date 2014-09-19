Aws.add_service(:IAM, {
  api: File.join(Aws::APIS_DIR, 'IAM.api.json'),
  docs: File.join(Aws::APIS_DIR, 'IAM.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'IAM.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'IAM.resources.json'),
})
