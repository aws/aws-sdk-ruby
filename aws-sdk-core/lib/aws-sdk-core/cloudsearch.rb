Aws.add_service(:CloudSearch, {
  api: File.join(Aws::API_DIR, 'CloudSearch.api.json'),
  docs: File.join(Aws::API_DIR, 'CloudSearch.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CloudSearch.paginators.json'),
})
