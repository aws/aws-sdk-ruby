Aws.add_service(:Glacier, {
  api: File.join(Aws::API_DIR, 'Glacier.api.json'),
  docs: File.join(Aws::API_DIR, 'Glacier.docs.json'),
  paginators: File.join(Aws::API_DIR, 'Glacier.paginators.json'),
  resources: File.join(Aws::API_DIR, 'Glacier.resources.json'),
  waiters: File.join(Aws::API_DIR, 'Glacier.waiters.json'),
})
