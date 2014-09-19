Aws.add_service(:Support, {
  api: File.join(Aws::APIS_DIR, 'Support.api.json'),
  docs: File.join(Aws::APIS_DIR, 'Support.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'Support.paginators.json'),
})
