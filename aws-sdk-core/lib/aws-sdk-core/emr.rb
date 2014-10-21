Aws.add_service(:EMR, {
  api: File.join(Aws::API_DIR, 'EMR.api.json'),
  docs: File.join(Aws::API_DIR, 'EMR.docs.json'),
  paginators: File.join(Aws::API_DIR, 'EMR.paginators.json'),
})
