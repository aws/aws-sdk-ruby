Aws.add_service(:EMR, {
  api: File.join(Aws::APIS_DIR, 'EMR.api.json'),
  docs: File.join(Aws::APIS_DIR, 'EMR.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'EMR.paginators.json'),
})
