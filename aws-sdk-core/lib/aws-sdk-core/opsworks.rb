Aws.add_service(:OpsWorks, {
  api: File.join(Aws::API_DIR, 'OpsWorks.api.json'),
  docs: File.join(Aws::API_DIR, 'OpsWorks.docs.json'),
  paginators: File.join(Aws::API_DIR, 'OpsWorks.paginators.json'),
  resources: File.join(Aws::API_DIR, 'OpsWorks.resources.json'),
})
