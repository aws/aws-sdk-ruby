Aws.add_service(:SWF, {
  api: File.join(Aws::APIS_DIR, 'SWF.api.json'),
  docs: File.join(Aws::APIS_DIR, 'SWF.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'SWF.paginators.json'),
})
