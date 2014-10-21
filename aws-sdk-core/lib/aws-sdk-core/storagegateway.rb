Aws.add_service(:StorageGateway, {
  api: File.join(Aws::API_DIR, 'StorageGateway.api.json'),
  docs: File.join(Aws::API_DIR, 'StorageGateway.docs.json'),
  paginators: File.join(Aws::API_DIR, 'StorageGateway.paginators.json'),
})
