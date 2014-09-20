Aws.add_service(:CloudWatch, {
  api: File.join(Aws::APIS_DIR, 'CloudWatch.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CloudWatch.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'CloudWatch.paginators.json'),
})
