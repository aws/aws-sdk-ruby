Aws.add_service(:Support, {
  api: File.join(Aws::API_DIR, 'Support.api.json'),
  docs: File.join(Aws::API_DIR, 'Support.docs.json'),
  paginators: File.join(Aws::API_DIR, 'Support.paginators.json'),
})
