Aws.add_service(:CloudWatch, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudWatch.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudWatch.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'CloudWatch.paginators.json'),
})
