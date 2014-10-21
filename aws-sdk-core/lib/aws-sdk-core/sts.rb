Aws.add_service(:STS, {
  api: File.join(Aws::API_DIR, 'STS.api.json'),
  docs: File.join(Aws::API_DIR, 'STS.docs.json'),
})
