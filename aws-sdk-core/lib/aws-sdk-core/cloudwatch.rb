Aws.add_service(:CloudWatch, {
  api: File.join(Aws::API_DIR, 'CloudWatch.api.json'),
  docs: File.join(Aws::API_DIR, 'CloudWatch.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CloudWatch.paginators.json'),
})
