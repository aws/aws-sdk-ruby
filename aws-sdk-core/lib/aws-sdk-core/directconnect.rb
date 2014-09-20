Aws.add_service(:DirectConnect, {
  api: File.join(Aws::APIS_DIR, 'DirectConnect.api.json'),
  docs: File.join(Aws::APIS_DIR, 'DirectConnect.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'DirectConnect.paginators.json'),
})
