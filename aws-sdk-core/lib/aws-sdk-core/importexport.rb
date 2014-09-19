Aws.add_service(:ImportExport, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'ImportExport.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'ImportExport.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'ImportExport.paginators.json'),
})
