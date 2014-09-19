Aws.add_service(:STS, {
  api: File.join(Aws::APIS_DIR, 'STS.api.json'),
  docs: File.join(Aws::APIS_DIR, 'STS.docs.json'),
})
