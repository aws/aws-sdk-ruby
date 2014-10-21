Aws.add_service(:CloudFront, {
  api: File.join(Aws::API_DIR, 'CloudFront.api.json'),
  docs: File.join(Aws::API_DIR, 'CloudFront.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CloudFront.paginators.json'),
  waiters: File.join(Aws::API_DIR, 'CloudFront.waiters.json'),
})
