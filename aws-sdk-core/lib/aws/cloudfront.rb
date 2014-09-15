Aws.add_service(:CloudFront, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudFront.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudFront.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'CloudFront.paginators.json'),
  waiters: File.join(Aws::GEM_ROOT, 'apis', 'CloudFront.waiters.json'),
})
