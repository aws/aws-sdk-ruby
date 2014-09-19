Aws.add_service(:StorageGateway, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'StorageGateway.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'StorageGateway.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'StorageGateway.paginators.json'),
})
