Aws.add_service(:EC2, {
  api: File.join(Aws::APIS_DIR, 'EC2.api.json'),
  docs: File.join(Aws::APIS_DIR, 'EC2.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'EC2.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'EC2.resources.json'),
  waiters: File.join(Aws::APIS_DIR, 'EC2.waiters.json'),
})
