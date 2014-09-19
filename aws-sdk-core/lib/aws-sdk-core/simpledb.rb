Aws.add_service(:SimpleDB, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'SimpleDB.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'SimpleDB.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'SimpleDB.paginators.json'),
})
