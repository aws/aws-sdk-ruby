Aws.add_service(:CloudTrail, {
  api: File.join(Aws::API_DIR, 'CloudTrail.api.json'),
  docs: File.join(Aws::API_DIR, 'CloudTrail.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CloudTrail.paginators.json'),
})
