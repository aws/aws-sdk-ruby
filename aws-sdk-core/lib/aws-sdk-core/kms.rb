Aws.add_service(:KMS, {
  api: File.join(Aws::API_DIR, 'KMS.api.json'),
  docs: File.join(Aws::API_DIR, 'KMS.docs.json'),
  paginators: File.join(Aws::API_DIR, 'KMS.paginators.json'),
})
