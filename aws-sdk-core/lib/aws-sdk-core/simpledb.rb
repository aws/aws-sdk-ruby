Aws.add_service(:SimpleDB, {
  api: File.join(Aws::APIS_DIR, 'SimpleDB.api.json'),
  docs: File.join(Aws::APIS_DIR, 'SimpleDB.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'SimpleDB.paginators.json'),
})
