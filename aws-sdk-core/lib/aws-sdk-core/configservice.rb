Aws.add_service(:ConfigService, {
  api: File.join(Aws::API_DIR, 'ConfigService.api.json'),
  docs: File.join(Aws::API_DIR, 'ConfigService.docs.json'),
  paginators: File.join(Aws::API_DIR, 'ConfigService.paginators.json'),
})
