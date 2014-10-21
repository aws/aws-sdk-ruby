Aws.add_service(:Route53Domains, {
  api: File.join(Aws::API_DIR, 'Route53Domains.api.json'),
  docs: File.join(Aws::API_DIR, 'Route53Domains.docs.json'),
})
