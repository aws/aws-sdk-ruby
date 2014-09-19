Aws.add_service(:StorageGateway, {
  api: File.join(Aws::APIS_DIR, 'StorageGateway.api.json'),
  docs: File.join(Aws::APIS_DIR, 'StorageGateway.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'StorageGateway.paginators.json'),
})
