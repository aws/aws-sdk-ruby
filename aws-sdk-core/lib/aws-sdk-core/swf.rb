Aws.add_service(:SWF, {
  api: File.join(Aws::API_DIR, 'SWF.api.json'),
  docs: File.join(Aws::API_DIR, 'SWF.docs.json'),
  paginators: File.join(Aws::API_DIR, 'SWF.paginators.json'),
})
