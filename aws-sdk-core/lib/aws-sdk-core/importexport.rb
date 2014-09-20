Aws.add_service(:ImportExport, {
  api: File.join(Aws::APIS_DIR, 'ImportExport.api.json'),
  docs: File.join(Aws::APIS_DIR, 'ImportExport.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'ImportExport.paginators.json'),
})
