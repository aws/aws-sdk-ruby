Aws.add_service(:Route53, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'Route53.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'Route53.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'Route53.paginators.json'),
})
