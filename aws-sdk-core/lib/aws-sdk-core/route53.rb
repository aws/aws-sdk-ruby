Aws.add_service(:Route53, {
  api: File.join(Aws::APIS_DIR, 'Route53.api.json'),
  docs: File.join(Aws::APIS_DIR, 'Route53.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'Route53.paginators.json'),
})
