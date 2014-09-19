Aws.add_service(:CloudSearch, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudSearch.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudSearch.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'CloudSearch.paginators.json'),
})
