Aws.add_service(:CloudSearchDomain, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudSearchDomain.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudSearchDomain.docs.json'),
})
