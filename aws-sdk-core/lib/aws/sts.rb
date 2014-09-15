Aws.add_service(:STS, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'STS.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'STS.docs.json'),
})
