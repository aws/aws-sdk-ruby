Aws.add_service(:Route53Domains, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'Route53Domains.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'Route53Domains.docs.json'),
})
