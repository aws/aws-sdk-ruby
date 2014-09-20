Aws.add_service(:CloudSearch, {
  api: File.join(Aws::APIS_DIR, 'CloudSearch.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CloudSearch.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'CloudSearch.paginators.json'),
})
