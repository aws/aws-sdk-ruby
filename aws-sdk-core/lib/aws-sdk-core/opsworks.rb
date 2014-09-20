Aws.add_service(:OpsWorks, {
  api: File.join(Aws::APIS_DIR, 'OpsWorks.api.json'),
  docs: File.join(Aws::APIS_DIR, 'OpsWorks.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'OpsWorks.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'OpsWorks.resources.json'),
})
