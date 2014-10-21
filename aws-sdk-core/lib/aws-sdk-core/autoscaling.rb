Aws.add_service(:AutoScaling, {
  api: File.join(Aws::API_DIR, 'AutoScaling.api.json'),
  docs: File.join(Aws::API_DIR, 'AutoScaling.docs.json'),
  paginators: File.join(Aws::API_DIR, 'AutoScaling.paginators.json'),
})
