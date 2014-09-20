Aws.add_service(:Glacier, {
  api: File.join(Aws::APIS_DIR, 'Glacier.api.json'),
  docs: File.join(Aws::APIS_DIR, 'Glacier.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'Glacier.paginators.json'),
  resources: File.join(Aws::APIS_DIR, 'Glacier.resources.json'),
  waiters: File.join(Aws::APIS_DIR, 'Glacier.waiters.json'),
})
