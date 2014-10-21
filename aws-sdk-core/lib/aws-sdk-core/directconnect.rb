Aws.add_service(:DirectConnect, {
  api: File.join(Aws::API_DIR, 'DirectConnect.api.json'),
  docs: File.join(Aws::API_DIR, 'DirectConnect.docs.json'),
  paginators: File.join(Aws::API_DIR, 'DirectConnect.paginators.json'),
})
