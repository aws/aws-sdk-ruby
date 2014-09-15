Aws.add_service(:CloudTrail, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudTrail.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudTrail.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'CloudTrail.paginators.json'),
})
