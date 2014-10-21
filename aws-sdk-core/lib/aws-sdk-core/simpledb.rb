Aws.add_service(:SimpleDB, {
  api: File.join(Aws::API_DIR, 'SimpleDB.api.json'),
  docs: File.join(Aws::API_DIR, 'SimpleDB.docs.json'),
  paginators: File.join(Aws::API_DIR, 'SimpleDB.paginators.json'),
})
