Aws.add_service(:CloudFront, {
  api: File.join(Aws::APIS_DIR, 'CloudFront.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CloudFront.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'CloudFront.paginators.json'),
  waiters: File.join(Aws::APIS_DIR, 'CloudFront.waiters.json'),
})
