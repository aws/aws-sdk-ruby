Aws.add_service(:DirectConnect, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'DirectConnect.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'DirectConnect.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'DirectConnect.paginators.json'),
})
